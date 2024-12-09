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
description(throne_room, 'Величественный зал с троном из черного камня. На стенах тяжелые гобелены, освещение слабое.').
description(kitchen, 'Небольшая кухня с очагом и пыльными банками на полках. На дне котла видны странные остатки.').
description(cellar, 'Темное помещение с бочками и следами воды на полу. Факел на стене горит, но воздуха почти нет.').
description(prison, 'Узкий коридор с решетчатыми дверями. Камеры пусты, но кажутся зловещими.').
description(secret_passage, 'Узкий туннель со стенами, покрытыми мхом. Слышен слабый звук капающей воды.').
description(courtyard, 'Заброшенный двор с сорняками и обломками статуй. В центре стоит старый колодец.').
description(garden_maze, 'Запутанный лабиринт с кустами. В центре каменный постамент с загадочной надписью.').
description(library, 'Темная библиотека с высокими полками. На столе лежит дневник с загадочными записями.').
description(lookout_tower, 'Винтовая лестница ведет на вершину башни. Вид на туманные окрестности.').
description(armory, 'Комната с оружием и стойкой для доспехов. Некоторые мечи выглядят необычно новыми.').
description(training_ground, 'Площадка с обломками мишеней и следами старой битвы.').
description(alchemy_lab, 'Зал с запахом трав и химикатов. В котле бурлит зелёная жидкость.').
description(chapel, 'Каменный зал для молитв с алтарем и старой фреской. Секретная дверь скрыта за алтарем.').
description(abandoned_bedrooms, 'Ряд старых комнат с пылью и паутиной. Следы когтей видны на кроватях.').
description(hall_of_mirrors, 'Зал с рядами зеркал. В некоторых видны шевелящиеся отражения.').


connected(main_door, main_hall, south).
connected(main_hall, main_door, north).

connected(main_hall, throne_room, north).
connected(throne_room, main_hall, south).

connected(main_hall, kitchen, east).
connected(kitchen, main_hall, west).

connected(kitchen, cellar, down).
connected(cellar, kitchen, up).

connected(cellar, prison, north).
connected(prison, cellar, south).

connected(prison, secret_passage, east).
connected(secret_passage, prison, west).

connected(throne_room, secret_passage, east).
connected(secret_passage, throne_room, west).

connected(main_hall, courtyard, south).
connected(courtyard, main_hall, north).

connected(courtyard, garden_maze, east).
connected(garden_maze, courtyard, west).

connected(main_hall, library, west).
connected(library, main_hall, east).

connected(library, lookout_tower, north).
connected(lookout_tower, library, south).

connected(library, armory, west).
connected(armory, library, east).

connected(armory, training_ground, north).
connected(training_ground, armory, south).

connected(training_ground, courtyard, west).
connected(courtyard, training_ground, east).

connected(kitchen, alchemy_lab, north).
connected(alchemy_lab, kitchen, south).

connected(alchemy_lab, library, west).
connected(library, alchemy_lab, east).

connected(main_hall, chapel, east).
connected(chapel, main_hall, west).

connected(chapel, prison, north).
connected(prison, chapel, south).

connected(throne_room, abandoned_bedrooms, west).
connected(abandoned_bedrooms, throne_room, east).

connected(abandoned_bedrooms, secret_passage, north).
connected(secret_passage, abandoned_bedrooms, south).

connected(throne_room, hall_of_mirrors, south).
connected(hall_of_mirrors, throne_room, north).

connected(hall_of_mirrors, secret_passage, west).
connected(secret_passage, hall_of_mirrors, east).

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
item(chest_key, 'Маленький ключ от сундука').
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

% Указание, в каких комнатах находятся предметы
hasItem(main_door_key, main_hall).
hasItem(kitchen_knife, kitchen).
hasItem(library_book, library).
hasItem(armor_shield, armory).
hasItem(alchemy_vial, alchemy_lab).
hasItem(ancient_scroll, chapel).
hasItem(gold_coin, throne_room).
hasItem(potion_of_healing, courtyard).
hasItem(magic_ring, secret_passage).
hasItem(old_map, lookout_tower).
hasItem(enchanted_dagger, garden_maze).
hasItem(tapestry, hall_of_mirrors).
hasItem(steel_sword, armory).
hasItem(guard_uniform, training_ground).
hasItem(chest_key, abandoned_bedrooms).
hasItem(candle, kitchen).
hasItem(herb_bag, library).
hasItem(wine_bottle, cellar).
hasItem(bed, abandoned_bedrooms).
hasItem(wooden_staff, chapel).
hasItem(cursed_amulet, throne_room).
hasItem(silver_ring, secret_passage).
hasItem(firewood, courtyard).
hasItem(mysterious_painting, hall_of_mirrors).
hasItem(broken_shield, armory).
hasItem(vintage_flute, library).
hasItem(thick_book, library).
hasItem(ancient_coin, chapel).
hasItem(bone_key, prison).

% Описание частей комнат
room_part(main_hall, table, 'На массивном дубовом столе лежит старый ключ.').
room_part(kitchen, counter, 'На столешнице лежит ржавый кухонный нож.').
room_part(library, shelf, 'На полке стоит древняя книга с заклинаниями.').
room_part(armory, rack, 'На стеллаже висит тяжёлый железный щит.').
room_part(alchemy_lab, shelf, 'На полке стоит прозрачная бутылочка с магической жидкостью.').
room_part(chapel, altar, 'На алтаре лежат скрижали с древними рунами.').
room_part(throne_room, floor, 'На полу лежит золотая монета с изображением короля.').
room_part(courtyard, ground, 'На земле лежит зелье исцеления, излучающее свет.').
room_part(secret_passage, wall, 'На стене висят магическое кольцо с голубым камнем.').
room_part(lookout_tower, desk, 'На столе лежит старая карта, покрытая пятнами.').
room_part(garden_maze, ground, 'На земле валяется волшебный кинжал с красной рукояткой.').
room_part(hall_of_mirrors, wall, 'На стене висит гобелен с изображением битвы.').
room_part(armory, weapon_rack, 'На оружейной стойке лежит кованый стальной меч.').
room_part(training_ground, locker, 'В углу стоит форма стражника, покрытая пылью.').
room_part(abandoned_bedrooms, chest, 'В сундуке лежит маленький ключ от сундука.').
room_part(kitchen, shelf, 'На полке стоит свеча с тусклым светом.').
room_part(library, shelf, 'На полке лежит мешок с лечебными травами.').
room_part(cellar, shelf, 'На полке стоит бутылка старого вина.').
room_part(abandoned_bedrooms, bed, 'На кровати лежит покрывало, старое и потрёпанное.').
room_part(chapel, altar, 'На алтаре лежит деревянный посох с символами.').
room_part(throne_room, pedestal, 'На пьедестале лежит проклятый амулет с темной энергией.').
room_part(secret_passage, table, 'На столе лежит серебряное кольцо с гравировкой.').
room_part(courtyard, fire, 'У костра лежат дрова для разведения огня.').
room_part(hall_of_mirrors, wall, 'На стене висит таинственная картина с изображением света и тени.').
room_part(armory, floor, 'На полу валяется сломанный щит, не пригодный для боя.').
room_part(library, shelf, 'На полке стоит винтажная флейта из дерева.').
room_part(library, shelf, 'На полке лежит толстая книга с таинственными символами.').
room_part(chapel, altar, 'На алтаре лежит древняя монета с изображением богини.').
room_part(prison, shelf, 'На полке лежит ключ, сделанный из кости, с узором.').

% Привязка предметов к частям комнат
item_in_part(main_hall, table, main_door_key).
item_in_part(kitchen, counter, kitchen_knife).
item_in_part(library, shelf, library_book).
item_in_part(armory, rack, armor_shield).
item_in_part(alchemy_lab, shelf, alchemy_vial).
item_in_part(chapel, altar, ancient_scroll).
item_in_part(throne_room, floor, gold_coin).
item_in_part(courtyard, ground, potion_of_healing).
item_in_part(secret_passage, wall, magic_ring).
item_in_part(lookout_tower, desk, old_map).
item_in_part(garden_maze, ground, enchanted_dagger).
item_in_part(hall_of_mirrors, wall, tapestry).
item_in_part(armory, weapon_rack, steel_sword).
item_in_part(training_ground, locker, guard_uniform).
item_in_part(abandoned_bedrooms, chest, chest_key).
item_in_part(kitchen, shelf, candle).
item_in_part(library, shelf, herb_bag).
item_in_part(cellar, shelf, wine_bottle).
item_in_part(abandoned_bedrooms, bed, bed).
item_in_part(chapel, altar, wooden_staff).
item_in_part(throne_room, pedestal, cursed_amulet).
item_in_part(secret_passage, table, silver_ring).
item_in_part(courtyard, fire, firewood).
item_in_part(hall_of_mirrors, wall, mysterious_painting).
item_in_part(armory, floor, broken_shield).
item_in_part(library, shelf, vintage_flute).
item_in_part(library, shelf, thick_book).
item_in_part(chapel, altar, ancient_coin).
item_in_part(prison, shelf, bone_key).


look(Part) :-
    currentLocation(Location),
    room_part(Location, Part, Description),
    format('~w~n', [Description]),
    item_in_part(Location, Part, Item),
    item(Item, ItemDesc),
    format('Вы заметили здесь предмет: ~w. Вы можете взять его с помощью команды take(~w).~n', [ItemDesc, Item]), !.

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
    retract(currentLocation(Current)),
    assert(currentLocation(Destination)),
    format('Вы переместились в ~w.~n', [Destination]),
    current_location, !.

move(_) :-
    write('Вы не можете двигаться в этом направлении!'), nl.

current_location :-
    currentLocation(Current),
    format('Вы находитесь в ~w.~n', [Current]).

run :-
    write('Добро пожаловать в игру!'), nl,
    write('Вы можете использовать следующие команды:'), nl,
    write('1. move(Direction) - переместиться в направлении (north, south, east, west, up, down).'), nl,
    write('2. look(Part) - осмотреть часть комнаты (например, стол, полка и т. д.).'), nl,
    write('3. take(Item) - взять предмет.'), nl,
    write('4. show_inventory - показать инвентарь.'), nl,
    write('5. current_location - показать текущее местоположение.'), nl,
    write('Удачи в вашем приключении!'), nl, current_location.
