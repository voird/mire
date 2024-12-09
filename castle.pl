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


item(main_door_key, 'Старый ключ от главной двери').
item(kitchen_knife, 'Ржавый кухонный нож').
item(library_book, 'Древняя книга').

hasItem(main_door_key, main_hall).
hasItem(old_book, library).

room_part(main_hall, table, 'На массивном дубовом столе лежит старый ключ.').
room_part(kitchen, counter, 'На столешнице лежит ржавый кухонный нож.').
room_part(library, shelf, 'На полке стоит древняя книга.').

item_in_part(main_hall, table, main_door_key).
item_in_part(kitchen, counter, kitchen_knife).
item_in_part(library, shelf, library_book).

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
