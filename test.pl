
:- dynamic currentLocation/1.
:- dynamic playerBalance/1.
:- dynamic inventory/1.
:- dynamic hasItem/2.

connected(city, park, north).
connected(city, work, south).
connected(city, cafe, east).
connected(work, park, west).
connected(cafe, work, west).
connected(park, city, east).
connected(cafe, park, south).

currentLocation(city).
playerBalance(0).
inventory([]).

job(work, job1, 50).
job(work, job2, 30).
job(cafe, job3, 20).

hasItem(magazine, city).
hasItem(flower, park).
hasItem(documents, work).
hasItem(coffee, cafe).

itemValue(magazine, 10).
itemValue(flower, 5).
itemValue(documents, 20).
itemValue(coffee, 15).

move(_direction):-
    currentLocation(_current),
    connected(_current, _destination, _direction),
    retract(currentLocation(_current)),
    assert(currentLocation(_destination)),
    format('Вы переместились в ~w.~n', [_destination]).

move(_):-
    write_ln("closed path !").

current_location :-
    currentLocation(Current),
    format('Вы находитесь в ~w.~n', [Current]),
    playerBalance(Balance),
    format('Ваш текущий баланс: ~w монет.~n', [Balance]).

do_job(JobName):-
    currentLocation(Current),
    job(Current, JobName, Reward),
    playerBalance(CurrentBalance),
    NewBalance is CurrentBalance + Reward,
    retract(playerBalance(CurrentBalance)),
    assert(playerBalance(NewBalance)),
    format('Вы выполнили подработку ~w и заработали ~w монет!~n', [JobName, Reward]),
    format('Ваш новый баланс: ~w монет.~n', [NewBalance]).

take(Item):-
    currentLocation(Location),
    hasItem(Item, Location),
    itemValue(Item, Value),
    retract(hasItem(Item, Location)),
    inventory(Inv),
    append(Inv, [Item], NewInv),
    retract(inventory(Inv)),
    assert(inventory(NewInv)),
    format('Вы взяли ~w (ценность: ~d).~n', [Item, Value]).

drop(Item):-
    inventory(Inv),
    member(Item, Inv),
    select(Item, Inv, NewInv),
    retract(inventory(Inv)),
    assert(inventory(NewInv)),
    currentLocation(Location),
    assert(hasItem(Item, Location)),
    format('Вы положили ~w обратно в ~w.~n', [Item, Location]).

show_inventory :-
    inventory(Inv),
    format('Ваш инвентарь: ~w.~n', [Inv]).

has_item(Item) :-
    inventory(Inv),
    member(Item, Inv).

show_current_items :-
    currentLocation(CurrentLocation),
    show_items(CurrentLocation).

show_items(Location) :-
    findall(Item, hasItem(Item,Location), Items),
    format('В ~w находятся следующие предметы: ~w.~n', [Location, Items]).




