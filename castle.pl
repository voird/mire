location(main_door, 'Главная дверь замка').
location(main_hall, 'Главный зал').
location(throne_room, 'Тронный зал').
location(kitchen, 'Кухня').
location(cellar, 'Погреб').
location(prison, 'Тюремные камеры').
location(secret_passage, 'Секретный проход').
location(courtyard, 'Двор замка').
location(garden_maze, 'Садовый лабиринт').
location(library, 'Библиотека').
location(lookout_tower, 'Наблюдательная башня').
location(armory, 'Оружейная').
location(training_ground, 'Тренировочная площадка').
location(alchemy_lab, 'Зал алхимии').
location(chapel, 'Капелла').
location(abandoned_bedrooms, 'Заброшенные спальни').
location(hall_of_mirrors, 'Зал зеркал').

description(main_door, 'Огромные деревянные ворота с металлическими полосами и массивным засовом. Сквозь щели пробивается холодный ветер.').
description(main_hall, 'Просторный зал с высоким сводчатым потолком, украшенный гобеленами. В центре стоит массивный дубовый стол.').
description(throne_room, 'Величественный зал с троном из черного камня. На стенах тяжелые гобелены, освещение слабое. В дальнем конце комнаты возвышается пьедестал, его поверхность кажется холодной и гладкой. Пол выложен полированными каменными плитами, отражающими тусклый свет факелов.').
description(kitchen, 'Небольшая кухня с очагом и пыльными банками на полках. На дне котла видны странные остатки.В углу, под слоем пыли, притаилась старая столешница, покрытая трещинами и следами от прежних экспериментов.').
description(cellar, 'Темное помещение с бочками и следами воды на полу. Факел на стене горит, но воздуха почти нет. В углу, между бочками и стеной, примостилась узкая деревянная полка, заваленная пыльными предметами.').
description(prison, 'Узкий коридор с решетчатыми дверями. Камеры пусты, но кажутся зловещими. В нише, у одной из стен, прикреплена узкая, пыльная полка.').
description(secret_passage, 'Узкий туннель со стенами, покрытыми мхом. Слышен слабый звук капающей воды. В самом конце туннеля, освещенный тусклым светом, стоит маленький, деревянный стол.').
description(courtyard, 'Заброшенный двор с сорняками и обломками статуй. Земля покрыта трещинами, местами пробивается редкая трава. В центре двора тлеет едва заметный костер.').
description(garden_maze, 'Запутанный лабиринт с кустами скрывает от глаз каменный постамент с загадочной надписью в самом центре. Под ногами земля твердая, местами мягкая, устланная опавшей хвоей и травой.').
description(library, 'Темная библиотека с высокими полками. Единственный источник света — слабое мерцание факела, выделяющее среди всего этого хаоса старый, потрескавшийся деревянный стол.').
description(lookout_tower, 'Винтовая лестница ведет на вершину башни. Вид на туманные окрестности. У самого основания башни, под одной из половиц, заметно небольшое углубление.').
description(armory, 'Комната с оружейной стойкой и стеллажом для доспехов. Некоторые мечи выглядят необычно новыми. Пол комнаты вымощен каменными плитами, на некоторых из которых видны темные пятна, возможно, от пролитой крови.').
description(training_ground, 'Площадка с обломками мишеней и следами старой битвы.В одном из углов, среди разбросанных предметов, заметно что-то темное и прямоугольное, похожее на старый ящик, возможно, шкафчик.').
description(alchemy_lab, 'Зал с запахом трав и химикатов. В котле бурлит зелёная жидкость.В углу стоит дубовый шкаф, его двери украшены изящной резьбой, изображающей сцены алхимических экспериментов.').
description(chapel, 'Каменный зал для молитв с алтарем и старой фреской. Секретная дверь скрыта за алтарем.').
description(abandoned_bedrooms, 'Ряд старых комнат с пылью и паутиной. Следы когтей видны на кроватях. В одной из комнат, среди рухнувшей мебели, стоит большой, старый деревянный сундук.').
description(hall_of_mirrors, 'Зал с рядами зеркал. В некоторых видны шевелящиеся отражения.Кажется, что стена находится где-то очень далеко, за пределами видимости.').


connected(main_door, main_hall, south).
connected(main_hall, main_door, north).

connected(main_hall, throne_room, west).
connected(throne_room, main_hall, east).

connected(main_hall, kitchen, east).
connected(kitchen, main_hall, west).

connected(kitchen, cellar, down).
connected(cellar, kitchen, up).

%connected(cellar, prison, north).
%connected(prison, cellar, south).

connected(prison, secret_passage, east).
connected(secret_passage, prison, west).

%connected(throne_room, secret_passage, east).
%connected(secret_passage, throne_room, west).

connected(main_hall, courtyard, south).
connected(courtyard, main_hall, north).

connected(courtyard, garden_maze, east).
connected(garden_maze, courtyard, west).

connected(main_hall, library, up).
connected(library, main_hall, down).

connected(library, lookout_tower, north).
connected(lookout_tower, library, south).

connected(library, armory, west).
connected(armory, library, east).

connected(armory, training_ground, north).
connected(training_ground, armory, south).

%connected(training_ground, courtyard, west).
%connected(courtyard, training_ground, east).

connected(kitchen, alchemy_lab, north).
connected(alchemy_lab, kitchen, south).

%connected(alchemy_lab, library, west).
%connected(library, alchemy_lab, east).

connected(main_hall, chapel, down).
connected(chapel, main_hall, up).

connected(chapel, prison, east).
connected(prison, chapel, west).

connected(throne_room, abandoned_bedrooms, west).
connected(abandoned_bedrooms, throne_room, east).

%connected(abandoned_bedrooms, secret_passage, north).
%connected(secret_passage, abandoned_bedrooms, south).

connected(throne_room, hall_of_mirrors, south).
connected(hall_of_mirrors, throne_room, north).

%connected(hall_of_mirrors, secret_passage, west).
%connected(secret_passage, hall_of_mirrors, east).

:- dynamic currentLocation/1.
currentLocation(main_hall).
:- dynamic inventory/1.
inventory([]).
:- dynamic hasItem/2.


% Определение предметов
item(main_door_key, 'Старый ключ от главной двери').
item(kitchen_knife, 'Ржавый кухонный нож').
item(library_book, 'Древняя книга с заклинаниями').
item(armor_shield, 'Тяжёлый щит из железа').
item(alchemy_vial, 'Прозрачная бутылочка с магической жидкостью').
item(ancient_scroll, 'Скрижали с древними рунами').
item(gold_coin, 'Золотая монета с изображением короля').
item(potion_of_healing, 'Зелье исцеления, излучающее свет').
item(magic_ring, 'Магическое кольцо с голубым камнем').
item(old_map, 'Старая карта, покрытая пятнами').
item(enchanted_dagger, 'Волшебный кинжал с красной рукояткой').
item(tapestry, 'Гобелен с изображением битвы').
item(steel_sword, 'Кованый стальной меч, готовый к бою').
item(guard_uniform, 'Форма стражника, покрытая пылью').
item(chest_key, 'Маленький ключ от шкафчика').
item(candle, 'Свеча с тусклым светом').
item(herb_bag, 'Мешок с лечебными травами').
item(wine_bottle, 'Бутылка старого вина').
item(bed, 'Простая кровать с потертым покрывалом').
item(wooden_staff, 'Деревянный посох, украшенный символами').
item(cursed_amulet, 'Проклятый амулет с темной энергией').
item(silver_ring, 'Серебряное кольцо с гравировкой').
item(firewood, 'Кучка дров для костра').
item(mysterious_painting, 'Таинственная картина на стене').
item(broken_shield, 'Сломанный щит, не пригодный для боя').
item(vintage_flute, 'Винтажная флейта из дерева').
item(thick_book, 'Толстая книга с таинственными символами').
item(ancient_coin, 'Древняя монета с изображением богини').
item(bone_key, 'Ключ, сделанный из кости, с узором').
item(broken_quill, 'Перо со сломанным кончиком').


% Указание, в каких комнатах находятся предметы
hasItem(main_door_key, main_hall).
hasItem(kitchen_knife, kitchen).
hasItem(candle, kitchen).
hasItem(library_book, library).
hasItem(vintage_flute, library).
hasItem(thick_book, library).
hasItem(herb_bag, library).
hasItem(broken_quill, library).
hasItem(armor_shield, armory).
hasItem(broken_shield, armory).
hasItem(steel_sword, armory).
hasItem(alchemy_vial, alchemy_lab).
hasItem(ancient_scroll, chapel).
hasItem(wooden_staff, chapel).
hasItem(ancient_coin, chapel).
hasItem(gold_coin, throne_room).
hasItem(cursed_amulet, throne_room).
hasItem(potion_of_healing, courtyard).
hasItem(firewood, courtyard).
hasItem(magic_ring, secret_passage).
hasItem(silver_ring, secret_passage).
hasItem(old_map, lookout_tower).
hasItem(enchanted_dagger, garden_maze).
hasItem(tapestry, hall_of_mirrors).
hasItem(mysterious_painting, hall_of_mirrors).
hasItem(guard_uniform, training_ground).
hasItem(chest_key, abandoned_bedrooms).
hasItem(bed, abandoned_bedrooms).
hasItem(wine_bottle, cellar).
hasItem(bone_key, prison).

% Описание частей комнат
room_part(main_hall, table, 'На массивном дубовом столе лежит старый ключ.').
room_part(kitchen, counter, 'На столешнице, покрытой слоем пыли, лежит ржавый кухонный нож.').
room_part(kitchen, shelf, 'На полке стоит свеча с тусклым светом.').
room_part(library, shelf, 'На полке стоит древняя книга с заклинаниями. Рядом с ней уютно расположилась винтажная флейта из дерева. На другой стороне полки лежит толстая книга с таинственными символами. А чуть поодаль — мешок с лечебными травами.').
room_part(library, table, 'На столе лежит поломанное перо — символ утраченной мысли и прерванного вдохновения.').
room_part(armory, rack, 'На стеллаже висит тяжёлый железный щит.').
room_part(armory, floor, 'На полу валяется сломанный щит, не пригодный для боя.').
room_part(armory, weapon_rack, 'На оружейной стойке лежит кованый стальной меч.').
room_part(alchemy_lab, shelf, 'На полке стоит прозрачная бутылочка с магической жидкостью.').
room_part(chapel, altar, 'На алтаре капеллы покоятся артефакты, окутанные тайнами и историей: скрижали с древними рунами, деревянный посох, украшенный мистическими символами, и древняя монета с изображением богини. ').
room_part(throne_room, floor, 'На полу лежит золотая монета с изображением короля.').
room_part(throne_room, pedestal, 'На пьедестале лежит проклятый амулет с темной энергией.').
room_part(courtyard, ground, 'На земле лежит зелье исцеления, излучающее свет.').
room_part(courtyard, fire, 'У костра лежат дрова для разведения огня.').
room_part(secret_passage, wall, 'На стене висят магическое кольцо с голубым камнем.').
room_part(secret_passage, table, 'На столе лежит серебряное кольцо с гравировкой.').
room_part(lookout_tower, floorboard, 'Внутри тайника лежит старая карта, покрытая пятнами.').
room_part(garden_maze, ground, 'На земле валяется волшебный кинжал с красной рукояткой.').
room_part(hall_of_mirrors, wall, 'На одной из стен висит гобелен с изображением битвы. Напротив, на соседней стене висит таинственная картина с изображением света и тени.').
room_part(training_ground, locker, 'В углу стоит форма стражника, покрытая пылью.').
room_part(abandoned_bedrooms, chest, 'В сундуке лежит маленький ключ от шкафчика.').
room_part(cellar, shelf, 'На полке стоит бутылка старого вина.').
room_part(abandoned_bedrooms, bed, 'На кровати лежит покрывало, старое и потрёпанное.').
room_part(prison, shelf, 'На полке лежит ключ, сделанный из кости, с узором.').

% Привязка предметов к частям комнат
item_in_part(main_hall, table, main_door_key).
item_in_part(kitchen, counter, kitchen_knife).
item_in_part(kitchen, shelf, candle).
item_in_part(library, shelf, library_book).
item_in_part(library, shelf, vintage_flute).
item_in_part(library, shelf, thick_book).
item_in_part(library, shelf, herb_bag).
item_in_part(library, table, broken_quill).
item_in_part(armory, rack, armor_shield).
item_in_part(armory, weapon_rack, steel_sword).
item_in_part(armory, floor, broken_shield).
item_in_part(alchemy_lab, shelf, alchemy_vial).
item_in_part(chapel, altar, ancient_scroll).
item_in_part(chapel, altar, ancient_coin).
item_in_part(chapel, altar, wooden_staff).
item_in_part(throne_room, floor, gold_coin).
item_in_part(throne_room, pedestal, cursed_amulet).
item_in_part(courtyard, ground, potion_of_healing).
item_in_part(courtyard, fire, firewood).
item_in_part(secret_passage, wall, magic_ring).
item_in_part(secret_passage, table, silver_ring).
item_in_part(lookout_tower, floorboard, old_map).
item_in_part(garden_maze, ground, enchanted_dagger).
item_in_part(hall_of_mirrors, wall, tapestry).
item_in_part(hall_of_mirrors, wall, mysterious_painting).
item_in_part(training_ground, locker, guard_uniform).
item_in_part(abandoned_bedrooms, chest, chest_key).
item_in_part(abandoned_bedrooms, bed, bed).
item_in_part(cellar, shelf, wine_bottle).
item_in_part(prison, shelf, bone_key).

requires_key(throne_room, bone_key).
requires_key(secret_passage, old_map).
requires_key(alchemy_lab, thick_book).
requires_key(training_ground, chest_key).



look(Part) :-
    currentLocation(Location),
    room_part(Location, Part, Description),
    format('~w~n', [Description]),
    findall(Item, item_in_part(Location, Part, Item), Items),
    (Items == [] ->
        format('На ~w ничего нет.~n', [Part])
    ;
        forall(member(Item, Items),
               (item(Item, ItemDesc),
                format('Вы заметили здесь предмет: ~w. Вы можете взять его с помощью команды take(~w).~n', [ItemDesc, Item]))
       )
    ).


look :-
    currentLocation(Current),
    description(Current, RoomDescription),
    format('~w~n', [RoomDescription]).

take(Item) :-
    currentLocation(Location),
    hasItem(Item, Location),
    retract(hasItem(Item, Location)),
    inventory(Inv),
    append(Inv, [Item], NewInv),
    retract(inventory(Inv)),
    assert(inventory(NewInv)),
    item(Item, ItemDesc),
    format('Вы взяли ~w.~n', [ItemDesc]), !.

take(_) :-
    write('Вы не можете взять этот предмет здесь!'), nl.

show_inventory :-
    inventory(Inv),
    (Inv = [] ->
        write('Ваш инвентарь пуст!'), nl
    ;
        format('Ваш инвентарь: ~w~n', [Inv])
    ).

move(Direction) :-
    currentLocation(Current),
    connected(Current, Destination, Direction),
    (requires_key(Destination, Key) ->
        inventory(Inv),
        (member(Key, Inv) ->
            retract(currentLocation(Current)),
            assert(currentLocation(Destination)),
            format('Вы переместились в ~w.~n', [Destination])
        ;
         item(Key, KeyDescription),
         location(Destination, DestinationDescription),
         format('Вы не можете войти в ~w (~w). ~n Не хватает ключа: ~w.~n', [Destination, DestinationDescription, KeyDescription]),
         !
        )
    ;
    retract(currentLocation(Current)),
    assert(currentLocation(Destination)),
    format('Вы переместились в ~w.~n', [Destination])),
    current_location, !.

move(_) :-
    write('Вы не можете двигаться в этом направлении!'), nl.

current_location :-
    currentLocation(Current).

show_location :-
    currentLocation(Location),
    location(Location, Description),
    format('Вы находитесь в ~w (~w).~n', [Location, Description]).
show_location :-
    write('Вы еще не выбрали локацию.'), nl.


run :-
    write('Добро пожаловать в игру!'), nl,
    write('Вы можете использовать следующие команды:'), nl,
    write('1. move(Direction) - переместиться в направлении (north, south, east, west, up, down).'), nl,
    write('2. look - осмотреть комнату.'), nl,
    write('3. look(Part) - осмотреть часть комнаты (например, стол, полка и т. д.).'), nl,
    write('4. take(Item) - взять предмет.'), nl,
    write('5. show_inventory - показать инвентарь.'), nl,
    write('6. show_location - показать текущее местоположение.'), nl,
    write('Удачи в вашем приключении!'), nl, current_location.
