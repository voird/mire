(ns mire.commands
  (:require [clojure.string :as str]
            [mire.rooms :as rooms]
            [mire.player :as player]))

(defn- move-between-refs
  "Move one instance of obj between from and to. Must call in a transaction."
  [obj from to]
  (alter from disj obj)
  (alter to conj obj))

;; Command functions

(defn look
  "Get a description of the surrounding environs and its contents."
  []
  (str (:desc @player/*current-room*)
       "\nExits: " (keys @(:exits @player/*current-room*)) "\n"
       (str/join "\n" (map #(str "There is " % " here.\n")
                           @(:items @player/*current-room*)))))


(defn move
  "\"♬ We gotta get out of this place... ♪\" Give a direction."
  [direction]
  (dosync
   (let [target-name ((:exits @player/*current-room*) (keyword direction))
         target (@rooms/rooms target-name)]
     (if target
       (do
         (move-between-refs player/*name*
                            (:inhabitants @player/*current-room*)
                            (:inhabitants target))
         (ref-set player/*current-room* target)
         (look))
       "You can't go that way."))))

(def possible-items [:keys :sword :map :potion :shield :treasure-chest :scroll :gemstone])

(def found-items (atom nil))  ;; Храним сгенерированный список, начальное значение - nil
(def found-items-set (atom #{}))  ;; Множество найденных предметов

(def game-over? (atom false))  ;; Переменная, указывающая на завершение игры


(defn look-items
  "Show the list of items the player needs to find. Generate it only once per session."
  []
  (if (nil? @found-items)  ;; Если список еще не сгенерирован
    (let [items-to-find (take 3 (shuffle possible-items))]  ;; Случайно выбираем 3 предмета
      (reset! found-items items-to-find)  ;; Сохраняем список в атом
      (str "You need to find the following items:\n"
           (str/join "\n" items-to-find)))  ;; Возвращаем строку с предметами
    ;; Если список уже существует
    (str "You need to find the following items:\n"
         (str/join "\n" @found-items))))  ;; Просто возвращаем существующий список


(defn grab
  "Pick something up."
  [thing]
  (dosync
   (if (rooms/room-contains? @player/*current-room* thing)
     (if (contains? @found-items (name thing))
       (do
         (swap! found-items-set conj (name thing))  ;; Добавляем предмет в найденные
         (if (= (count @found-items-set) (count @found-items))  ;; Проверяем, все ли предметы найдены
           (do
             (reset! game-over? true)  ;; Завершаем игру
             (str "Congratulations, " player/*name* ", you found all the items! You win!"))
           (str "You picked up the " thing ".")))
       (str "That is not part of the list of items you need to find."))  ;; Обработка неверного предмета
     (str "There isn't any " thing " here."))))  ;; Обработка отсутствующего предмета


(defn discard
  "Put something down that you're carrying."
  [thing]
  (dosync
   (if (player/carrying? thing)
     (do (move-between-refs (keyword thing)
                            player/*inventory*
                            (:items @player/*current-room*))
         (str "You dropped the " thing "."))  ;; Предмет был отброшен
     (str "You're not carrying a " thing "."))))  ;; Предмет не найден в инвентаре

(defn inventory
  "See what you've got."
  []
  (str "You are carrying:\n"
       (str/join "\n" (seq @player/*inventory*))))  ;; Возвращает список предметов в инвентаре

(defn detect
  "If you have the detector, you can see which room an item is in."
  [item]
  (if (@player/*inventory* :detector)
    (let [room (first (filter #((:items %) (keyword item))
                             (vals @rooms/rooms)))]
      (if room
        (str item " is in " (:name room))
        (str item " is not in any room.")))
    "You need to be carrying the detector for that."))


(defn say
  "Say something out loud so everyone in the room can hear."
  [& words]
  (let [message (str/join " " words)]
    (doseq [inhabitant (disj @(:inhabitants @player/*current-room*)
                             player/*name*)]
      (binding [*out* (player/streams inhabitant)]
        (println message)
        (println player/prompt)))
    (str "You said " message)))

(defn help
  "Show available commands and what they do."
  []
  (str/join "\n" (map #(str (key %) ": " (:doc (meta (val %)))))
            (dissoc (ns-publics 'mire.commands)
                    'execute 'commands)))  ;; Moved here


;; Command data
(def commands {"move" move,
               "north" (fn [] (move :north)),
               "south" (fn [] (move :south)),
               "east" (fn [] (move :east)),
               "west" (fn [] (move :west)),
               "grab" grab,
               "discard" discard,
               "inventory" inventory,
               "detect" detect,
               "look" look,
               "say" say,
               "help" help,
               "look-items" look-items})

;; Command handling
(defn execute
  "Execute a command that is passed to us."
  [input]
  (try (let [[command & args] (.split input " +")]
         (apply (commands command) args))
       (catch Exception e
         (.printStackTrace e (new java.io.PrintWriter *err*))
         "You can't do that!")))
