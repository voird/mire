location(main_door, 'Main lock door').
location(main_hall, 'Main Hall').
location(throne_room, 'Throne Room').
location(kitchen, 'Kitchen').
location(cellar, 'Cellar').
location(prison, 'Prison cells').
location(secret_passage, 'Secret passage').
location(courtyard, 'Castle Courtyard').
location(garden_maze, 'Garden maze').
location(library, 'Library').
location(lookout_tower, 'Observation Tower').
location(armory, 'Armory').
location(training_ground_, 'Training ground').
location(alchemy_lab, 'Hall of Alchemy').
location(chapel, 'Chapel').
location(abandoned_bedrooms, 'Abandoned bedrooms').
location(hall_of_mirrors, 'Hall of Mirrors').

description(main_door, 'A huge wooden gate with metal strips and a massive bolt. A cold wind comes through the cracks.').
description(main_hall, 'A spacious hall with a high vaulted ceiling, decorated with tapestries. In the center stands a massive oak table.').
description(throne_room, 'A majestic hall with a throne of black stone. Heavy tapestries on the walls, dim lighting.').
description(kitchen, 'A small kitchen with a fireplace and dusty jars on the shelves. Strange remains are visible at the bottom of the cauldron.').
description(cellar, 'A dark room with barrels and traces of water on the floor. A torch on the wall burns, but there is almost no air.').
description(prison, 'A narrow corridor with barred doors. The cells are empty, but seem ominous.').
description(secret_passage, 'A narrow tunnel with moss-covered walls. The faint sound of dripping water can be heard.').
description(courtyard, 'An abandoned courtyard with weeds and broken statues. An old well stands in the center.').
description(garden_maze, 'A confusing maze with bushes. In the center is a stone pedestal with a mysterious inscription.').
description(library, 'A dark library with high shelves. On the table is a journal with mysterious entries.').
description(lookout_tower, 'A spiral staircase leads to the top of the tower. A view of the foggy surroundings.').
description(armory, 'A room with weapons and an armor rack. Some of the swords look unusually new.').
description(training_ground, 'An area with broken targets and traces of an old battle.').
description(alchemy_lab, 'A room with the smell of herbs and chemicals. A green liquid bubbles in a cauldron.').
description(chapel, 'A stone prayer room with an altar and an old fresco. A secret door is hidden behind the altar.').
description(abandoned_bedrooms, 'A row of old rooms with dust and cobwebs. Claw marks are visible on the beds.').
description(hall_of_mirrors, 'A room with rows of mirrors. Some have moving reflections.').

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

% Item Definitions
%item(gold_coin, 'Gold coin embossed on the front side').
item(main_door_key, 'An old key to the main door').
item(kitchen_knife, 'A rusty kitchen knife').
item(library_book, 'Ancient spellbook').
item(armor_shield, 'A heavy iron shield').
item(alchemy_vial, 'A transparent vial containing a magical liquid').
item(ancient_scroll, 'A tablet with ancient runes').
item(gold_coin, 'A gold coin with the image of a king').
item(potion_of_healing, 'A potion of healing that emits light').
item(magic_ring, 'A magical ring with a blue stone').
item(old_map, 'An old map covered in stains').
item(enchanted_dagger, 'A magical dagger with a red handle').
item(tapestry, 'A tapestry depicting a battle').
item(steel_sword, 'A forged steel sword, ready for battle').
item(guard_uniform, 'A guard uniform covered in dust').
item(chest_key, 'A small key to a chest').
item(candle, 'A candle with a dim light').
item(herb_bag, 'A bag of medicinal herbs').
item(wine_bottle, 'A bottle of old wine').
item(bed, 'A simple bed with a shabby bedspread').
item(wooden_staff, 'A wooden staff decorated with symbols').
item(cursed_amulet, 'A cursed amulet with dark energy').
item(silver_ring, 'A silver ring with an engraving').
item(firewood, 'A pile of firewood').
item(mysterious_painting, 'A mysterious painting on the wall').
item(broken_shield, 'A broken shield, unsuitable for combat').
item(vintage_flute, 'A vintage wooden flute').
item(thick_book, 'A thick book with mysterious symbols').
item(ancient_coin, 'Ancient coin with an image of a goddess').
item(bone_key, 'A key made of bone, with a pattern').

% Indication of which rooms the items are in
hasItem(coin, main_hall).
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


% Description of room parts
room_part(main_hall, table, 'On the massive oak table lies an old key.').
room_part(kitchen, counter, 'On the countertop lies a rusty kitchen knife.').
room_part(library, shelf, 'On the shelf lies an ancient book of spells.').
room_part(armory, rack, 'On the shelf hangs a heavy iron shield.').
room_part(alchemy_lab, shelf, 'On the shelf lies a transparent bottle with a magical liquid.').
room_part(chapel, altar, 'On the altar lie tablets with ancient runes.').
room_part(throne_room, floor, 'On the floor lies a gold coin with an image of a king.').
room_part(courtyard, ground, 'On the ground lies a healing potion that emits light.').
room_part(secret_passage, wall, 'On the wall hangs a magic ring with a blue stone.').
room_part(lookout_tower, desk, 'On the table lies an old map covered in stains.').
room_part(garden_maze, ground, 'On the ground lies a magic dagger with a red handle.').
room_part(hall_of_mirrors, wall, 'On the wall hangs a tapestry depicting a battle.').
room_part(armory, weapon_rack, 'On the weapon rack lies a forged steel sword.').
room_part(training_ground, locker, 'In the corner stands a guards uniform covered in dust.').
room_part(abandoned_bedrooms, chest, 'In the chest lies a small key to the chest.').
room_part(kitchen, shelf, 'There is a dimly lit candle on the shelf.').
room_part(library, shelf, 'There is a bag of medicinal herbs on the shelf.').
room_part(cellar, shelf, 'There is a bottle of old wine on the shelf.').
room_part(abandoned_bedrooms, bed, 'There is a bedspread on the bed, old and tattered.').
room_part(chapel, altar, 'There is a wooden staff with symbols on the altar.').
room_part(throne_room, pedestal, 'There is a cursed amulet with dark energy on the pedestal.').
room_part(secret_passage, table, 'There is an engraved silver ring on the table.').
room_part(courtyard, fire, 'There is wood for starting a fire by the fire.').
room_part(hall_of_mirrors, wall, 'There is a mysterious painting on the wall depicting light and shadow.').
room_part(armory, floor, 'There is a broken shield on the floor, unsuitable for combat.').
room_part(library, shelf, 'There is a vintage wooden flute on the shelf.').
room_part(library, shelf, 'There is a thick book with mysterious symbols on the shelf.').
room_part(chapel, altar, 'There is an ancient coin with an image of a goddess on the altar.').
room_part(prison, shelf, 'There is a key made of bone with a pattern on the shelf.').

% Binding items to room parts
item_in_part(main_hall, table, main_door_key).
item_in_part(main_hall, table, coin).
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
    clear,
    currentLocation(Location),
    room_part(Location, Part, Description),
    format('~w~n', [Description]),
    item_in_part(Location, Part, Item),
    item(Item, ItemDesc),
    format('You noticed an item here: ~w. You can take it with the command take(~w).~n', [ItemDesc, Item]), !.

%look :-
%    currentLocation(Current),
%    description(Current, RoomDescription),
%    format('~w~n', [RoomDescription]).

take(Item) :-
    clear,
    currentLocation(Location),
    hasItem(Item, Location),
    retract(hasItem(Item, Location)),
    inventory(Inv),
    append(Inv, [Item], NewInv),
    retract(inventory(Inv)),
    assert(inventory(NewInv)),
    item(Item, ItemDesc),
    format('You took ~w.~n', [ItemDesc]), !.

take(_) :-
    clear,
    write('You cant take this item here!'), nl.

show_inventory :-
    clear,
    inventory(Inv),
    (Inv = [] ->
        write('Your inventory is empty!'), nl
    ;
        format('Your inventory: ~w~n', [Inv])
    ).

move(Direction) :-
    clear,
    currentLocation(Current),
    connected(Current, Destination, Direction),
    retract(currentLocation(Current)),
    assert(currentLocation(Destination)),
    format('You have moved to ~w.~n', [Destination]),
    current_location, !.

move(_) :-
    clear,
    write('You cannot move in this direction!'), nl.

%current_location :-
%    currentLocation(Current),
%    format('You are in ~w.~n', [Current]).

run :-
    clear,
    write('Welcome to the game!'), nl,
    write('You can use the following commands:'), nl,
    write('1. move(Direction) - move in a direction (north, south, east, west, up  down).'), nl,
    write('2. look(Part) - look at a part of the room (e.g. table, shelf, etc.).'), nl,
    write('3. look - look around you.'), nl,
    write('4. take(Item) - take an item.'), nl,
    write('5. show_inventory - show inventory.'), nl,
    write('6. current_location - show current location.'), nl,
    write('7. talk_to(NPC) - you can talk to NPC.'), nl,
    write('8. give(NPC, Item) - you give item to the NPC.'), nl,
    write('Good luck on your adventure!'), nl, current_location.



bot(goblin, [main_hall]).
bot(gnome, [main_hall]).
bot(dwarf, [prison]).
bot(knight, [armory]).
bot(wizard, [alchemy_lab]).


del(X, [X|L1], L1).
del(X, [Y|L1], [Y|L2]) :- del(X, L1, L2).

%need_to(goblin, coin).


clear :-
    write('\33\[2J').


current_location :-
    currentLocation(Current),
    location(Current, Name),
    format('You are in ~w.~n', [Name]).

look :-
    clear,
    currentLocation(Current),
    current_location,
    description(Current, RoomDescription),
    format('~w~n', [RoomDescription]).

who_is_here :-
    currentLocation(Current),
    findall(Bot, bot(Bot, [Current]), Bots),
    clear,
    (Bots = [] ->
        write('Room is empty!'), nl
    ;
        format('Here is: ~w~n', [Bots])
    ).

% Rules to handle the "talk to" command:
talk_to(Bot) :-
    clear,
    bot(Bot, Location),
    currentLocation(Current),
    member(Current, Location),
    talk(Bot).

give(Bot, Item) :-
    clear,
    bot(Bot, [Current]),
    need_to(Bot, Item),
    currentLocation(Current),
    inventory(Inv),
    Inv = [Inv1|Inv2],
    (Inv1 = Item ->

    del(Item, [Item|Inv2], Inv2),
    retract(inventory([Inv1|Inv2])),
    assert(inventory([Inv2]));

    del(Item, [Inv1|Inv2], [Inv1|Inv3]),
    retract(inventory([Inv1|Inv2])),
    assert(inventory([Inv3]));

    write('You have not this item!')
    ).


% Rules for the bot's responses:
talk(goblin) :-
    write("Goblin says:
    - In shadows dark, a goblin's lair,
    Where secrets gleam and treasures rare.
    Gold whispers tales, a mystery to find,
    A gift concealed, for the curious mind.
"), nl.
talk(gnome) :-
    write("Gnome says:
    - In a realm of green, where magic thrives,
    A gnome with hood, so long it dives.
    Butterflies flutter, dance on the breeze,
    As he twirls his stick with playful ease.
"), nl.
talk(dwarf) :-
    write("Dwarf says:
    - I'm a dwarf of fable, fierce and bold,
    With a temper short and a heart of gold,
    Stones I throw, with aim so true,
    Beware my wrath, if you dare to intrude.
"), nl.
talk(knight) :-
    write("Knight says:
    - I'm a knight of valor, brave and true,
    My sword and shield, my honor's due,
    In the sun's embrace, I stand so tall,
    A guardian sworn, at duty's call.
"), nl.
talk(wizard) :-
    write("Wizard says:
    - In a realm where magic flows, a wizard sly,
    With wealth untold, his secrets lie.
    A gang he leads, with power vast,
    To legalize the nuclear cast.
"), nl.

:- clear.
:- write('Welcome to the game!'), nl,
    write('You can use the following commands:'), nl,
    write('1. move(Direction) - move in a direction (north, south, east, west, up  down).'), nl,
    write('2. look(Part) - look at a part of the room (e.g. table, shelf, etc.).'), nl,
    write('3. look - look around you.'), nl,
    write('4. take(Item) - take an item.'), nl,
    write('5. show_inventory - show inventory.'), nl,
    write('6. current_location - show current location.'), nl,
    write('7. talk_to(NPC) - you can talk to NPC.'), nl,
    write('8. give(NPC, Item) - you give item to the NPC.'), nl,
    write('Good luck on your adventure!'), nl, current_location.
