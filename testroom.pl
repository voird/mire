:- dynamic currentLocation/1.
currentLocation(room).
:- dynamic inventory/1.
inventory([]).
:- dynamic hasItem/2.

location(room, 'room').
description(room, "It's just a small room with a table in the center. A testbot is sitting in the corner.").
bot(testbot, [room]).
item(coin, 'Gold coin').
hasItem(coin, room).
room_part(room, table, 'Wooden table').
item_in_part(room, table, coin).

clear :-
    write('\33\[2J').

current_location :-
    currentLocation(Current),
    location(Current, Name),
    format('You are in ~w.~n', [Name]).

run :-
    clear,
    write("Welcome to the testgame!
    You can use this comands:
    1)look.
    2)look(Part).
    3)take(Item).
    4)show_inventory.
    5)who_is_here.
    6)talk_to(Bot).
    "), nl.


look(Part) :-
    clear,
    currentLocation(Location),
    room_part(Location, Part, Description),
    format('~w~n', [Description]),
    item_in_part(Location, Part, Item),
    item(Item, ItemDesc),
    format('You noticed an item here: ~w. You can take it with the command take(~w).~n', [ItemDesc, Item]), !.

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
    talk(Bot),
    read(Choice),
    handle_choice(Choice).

talk(testbot) :-
    write("Testbot says:
    I'm TestBot. Hello!
    a. Hello!
    b. Bye!
    "), nl.

del(X, [X|L1], L1).
del(X, [Y|L1], [Y|L2]) :- del(X, L1, L2).
handle_choice(a) :-
    write("You says: Hello!").
handle_choice(b) :-
    write("You says: Bye!").
need_to(testbot, coin).

%give(Bot, Item) :-
%    clear,
%    currentLocation(Current),
%    inventory(Inv),
%    bot(Bot, [Current]),
%    need_to(Bot, Item),
%    (Inv = [Item] -> format('You give: ~w~n', [Inv]), nl,
%     delete(Item, Inv, NewInv),
%     retract(inventory(Inv)),
%         assert(inventory(NewInv))
%        ;
%        write('You have not this item!')).

%give1(Bot, Item) :-
%    clear,
%    bot(Bot, [Current]),
%    need_to(Bot, Item),
%    currentLocation(Current),
%    inventory([Inv1|Inv2]),
%    (Inv1 = Item ->

%    del(Item, [Item|Inv2], Inv2),
%    retract(inventory([Inv1|Inv2])),
%    assert(inventory([Inv2]));

%    del(Item, [Inv1|Inv2], [Inv1|Inv3]),
%    retract(inventory([Inv1|Inv2])),
%    assert(inventory([Inv3]))
%    ).



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
