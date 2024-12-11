location(main_door, '������� ����� �����').
location(main_hall, '������� ���').
location(throne_room, '������� ���').
location(kitchen, '�����').
location(cellar, '������').
location(prison, '�������� ������').
location(secret_passage, '��������� ������').
location(courtyard, '���� �����').
location(garden_maze, '������� ��������').
location(library, '����������').
location(lookout_tower, '�������������� �����').
location(armory, '���������').
location(training_ground, '������������� ��������').
location(alchemy_lab, '��� �������').
location(chapel, '�������').
location(abandoned_bedrooms, '����������� �������').
location(hall_of_mirrors, '��� ������').

description(main_door, '�������� ���������� ������ � �������������� �������� � ��������� �������. ������ ���� ����������� �������� �����.').
description(main_hall, '���������� ��� � ������� ��������� ��������, ���������� ����������. � ������ ����� ��������� ������� ����.').
description(throne_room, '�������������� ��� � ������ �� ������� �����. �� ������ ������� ��������, ��������� ������. � ������� ����� ������� ����������� ���������, ��� ����������� ������� �������� � �������. ��� ������� ������������� ��������� �������, ����������� ������� ���� �������.').
description(kitchen, '��������� ����� � ������ � �������� ������� �� ������. �� ��� ����� ����� �������� �������.� ����, ��� ����� ����, ���������� ������ ����������, �������� ��������� � ������� �� ������� �������������.').
description(cellar, '������ ��������� � ������� � ������� ���� �� ����. ����� �� ����� �����, �� ������� ����� ���. � ����, ����� ������� � ������, ������������ ����� ���������� �����, ���������� �������� ����������.').
description(prison, '����� ������� � ����������� �������. ������ �����, �� ������� ���������. � ����, � ����� �� ����, ����������� �����, ������� �����.').
description(secret_passage, '����� ������� �� �������, ��������� ����. ������ ������ ���� �������� ����. � ����� ����� �������, ���������� ������� ������, ����� ���������, ���������� ����.').
description(courtyard, '����������� ���� � ��������� � ��������� ������. ����� ������� ���������, ������� ����������� ������ �����. � ������ ����� ����� ���� �������� ������.').
description(garden_maze, '���������� �������� � ������� �������� �� ���� �������� ��������� � ���������� �������� � ����� ������. ��� ������ ����� �������, ������� ������, ��������� ������� ����� � ������.').
description(library, '������ ���������� � �������� �������. ������������ �������� ����� � ������ �������� ������, ���������� ����� ����� ����� ����� ������, �������������� ���������� ����.').
description(lookout_tower, '�������� �������� ����� �� ������� �����. ��� �� �������� �����������. � ������ ��������� �����, ��� ����� �� �������, ������� ��������� ����������.').
description(armory, '������� � ��������� ������� � ��������� ��� ��������. ��������� ���� �������� �������� ������. ��� ������� ������� ��������� �������, �� ��������� �� ������� ����� ������ �����, ��������, �� �������� �����.').
description(training_ground, '�������� � ��������� ������� � ������� ������ �����.� ����� �� �����, ����� ������������ ���������, ������� ���-�� ������ � �������������, ������� �� ������ ����, ��������, �������.').
description(alchemy_lab, '��� � ������� ���� � ���������. � ����� ������ ������ ��������.� ���� ����� ������� ����, ��� ����� �������� ������� �������, ������������ ����� ������������ �������������.').
description(chapel, '�������� ��� ��� ������ � ������� � ������ �������. ��������� ����� ������ �� �������.').
description(abandoned_bedrooms, '��� ������ ������ � ����� � ��������. ����� ������ ����� �� ��������. � ����� �� ������, ����� ��������� ������, ����� �������, ������ ���������� ������.').
description(hall_of_mirrors, '��� � ������ ������. � ��������� ����� ����������� ���������.�������, ��� ����� ��������� ���-�� ����� ������, �� ��������� ���������.').


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


% ����������� ���������
item(main_door_key, '������ ���� �� ������� �����').
item(kitchen_knife, '������ �������� ���').
item(library_book, '������� ����� � ������������').
item(armor_shield, '������ ��� �� ������').
item(alchemy_vial, '���������� ��������� � ���������� ���������').
item(ancient_scroll, '�������� � �������� ������').
item(gold_coin, '������� ������ � ������������ ������').
item(potion_of_healing, '����� ���������, ���������� ����').
item(magic_ring, '���������� ������ � ������� ������').
item(old_map, '������ �����, �������� �������').
item(enchanted_dagger, '��������� ������ � ������� ���������').
item(tapestry, '������� � ������������ �����').
item(steel_sword, '������� �������� ���, ������� � ���').
item(guard_uniform, '����� ���������, �������� �����').
item(chest_key, '��������� ���� �� ��������').
item(candle, '����� � ������� ������').
item(herb_bag, '����� � ��������� �������').
item(wine_bottle, '������� ������� ����').
item(bed, '������� ������� � �������� ����������').
item(wooden_staff, '���������� �����, ���������� ���������').
item(cursed_amulet, '��������� ������ � ������ ��������').
item(silver_ring, '���������� ������ � �����������').
item(firewood, '����� ���� ��� ������').
item(mysterious_painting, '������������ ������� �� �����').
item(broken_shield, '��������� ���, �� ��������� ��� ���').
item(vintage_flute, '��������� ������ �� ������').
item(thick_book, '������� ����� � ������������� ���������').
item(ancient_coin, '������� ������ � ������������ ������').
item(bone_key, '����, ��������� �� �����, � ������').
item(broken_quill, '���� �� ��������� ��������').


% ��������, � ����� �������� ��������� ��������
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

% �������� ������ ������
room_part(main_hall, table, '�� ��������� ������� ����� ����� ������ ����.').
room_part(kitchen, counter, '�� ����������, �������� ����� ����, ����� ������ �������� ���.').
room_part(kitchen, shelf, '�� ����� ����� ����� � ������� ������.').
room_part(library, shelf, '�� ����� ����� ������� ����� � ������������. ����� � ��� ����� ������������� ��������� ������ �� ������. �� ������ ������� ����� ����� ������� ����� � ������������� ���������. � ���� ������� � ����� � ��������� �������.').
room_part(library, table, '�� ����� ����� ���������� ���� � ������ ���������� ����� � ����������� �����������.').
room_part(armory, rack, '�� �������� ����� ������ �������� ���.').
room_part(armory, floor, '�� ���� �������� ��������� ���, �� ��������� ��� ���.').
room_part(armory, weapon_rack, '�� ��������� ������ ����� ������� �������� ���.').
room_part(alchemy_lab, shelf, '�� ����� ����� ���������� ��������� � ���������� ���������.').
room_part(chapel, altar, '�� ������ ������� �������� ���������, ��������� ������� � ��������: �������� � �������� ������, ���������� �����, ���������� ������������ ���������, � ������� ������ � ������������ ������. ').
room_part(throne_room, floor, '�� ���� ����� ������� ������ � ������������ ������.').
room_part(throne_room, pedestal, '�� ���������� ����� ��������� ������ � ������ ��������.').
room_part(courtyard, ground, '�� ����� ����� ����� ���������, ���������� ����.').
room_part(courtyard, fire, '� ������ ����� ����� ��� ���������� ����.').
room_part(secret_passage, wall, '�� ����� ����� ���������� ������ � ������� ������.').
room_part(secret_passage, table, '�� ����� ����� ���������� ������ � �����������.').
room_part(lookout_tower, floorboard, '������ ������� ����� ������ �����, �������� �������.').
room_part(garden_maze, ground, '�� ����� �������� ��������� ������ � ������� ���������.').
room_part(hall_of_mirrors, wall, '�� ����� �� ���� ����� ������� � ������������ �����. ��������, �� �������� ����� ����� ������������ ������� � ������������ ����� � ����.').
room_part(training_ground, locker, '� ���� ����� ����� ���������, �������� �����.').
room_part(abandoned_bedrooms, chest, '� ������� ����� ��������� ���� �� ��������.').
room_part(cellar, shelf, '�� ����� ����� ������� ������� ����.').
room_part(abandoned_bedrooms, bed, '�� ������� ����� ���������, ������ � ����������.').
room_part(prison, shelf, '�� ����� ����� ����, ��������� �� �����, � ������.').

% �������� ��������� � ������ ������
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
        format('�� ~w ������ ���.~n', [Part])
    ;
        forall(member(Item, Items),
               (item(Item, ItemDesc),
                format('�� �������� ����� �������: ~w. �� ������ ����� ��� � ������� ������� take(~w).~n', [ItemDesc, Item]))
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
    format('�� ����� ~w.~n', [ItemDesc]), !.

take(_) :-
    write('�� �� ������ ����� ���� ������� �����!'), nl.

show_inventory :-
    inventory(Inv),
    (Inv = [] ->
        write('��� ��������� ����!'), nl
    ;
        format('��� ���������: ~w~n', [Inv])
    ).

move(Direction) :-
    currentLocation(Current),
    connected(Current, Destination, Direction),
    (requires_key(Destination, Key) ->
        inventory(Inv),
        (member(Key, Inv) ->
            retract(currentLocation(Current)),
            assert(currentLocation(Destination)),
            format('�� ������������� � ~w.~n', [Destination])
        ;
         item(Key, KeyDescription),
         location(Destination, DestinationDescription),
         format('�� �� ������ ����� � ~w (~w). ~n �� ������� �����: ~w.~n', [Destination, DestinationDescription, KeyDescription]),
         !
        )
    ;
    retract(currentLocation(Current)),
    assert(currentLocation(Destination)),
    format('�� ������������� � ~w.~n', [Destination])),
    current_location, !.

move(_) :-
    write('�� �� ������ ��������� � ���� �����������!'), nl.

current_location :-
    currentLocation(Current).

show_location :-
    currentLocation(Location),
    location(Location, Description),
    format('�� ���������� � ~w (~w).~n', [Location, Description]).
show_location :-
    write('�� ��� �� ������� �������.'), nl.


run :-
    write('����� ���������� � ����!'), nl,
    write('�� ������ ������������ ��������� �������:'), nl,
    write('1. move(Direction) - ������������� � ����������� (north, south, east, west, up, down).'), nl,
    write('2. look - ��������� �������.'), nl,
    write('3. look(Part) - ��������� ����� ������� (��������, ����, ����� � �. �.).'), nl,
    write('4. take(Item) - ����� �������.'), nl,
    write('5. show_inventory - �������� ���������.'), nl,
    write('6. show_location - �������� ������� ��������������.'), nl,
    write('����� � ����� �����������!'), nl, current_location.
