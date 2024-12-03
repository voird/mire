
:- dynamic currentLocation/1.
:- dynamic playerBalance/1.

connected(city, park, north).
connected(city, work, south).
connected(city, cafe, east).
connected(work, park, west).
connected(cafe, work, west).
connected(park, city, east).
connected(cafe, park, south).

currentLocation(city).
playerBalance(0).

job(work, job1, 50).
job(work, job2, 30).
job(cafe, job3, 20).

move(_direction):-
    currentLocation(_current),
    connected(_current, _destination, _direction),
    retract(currentLocation(_current)),
    assert(currentLocation(_destination)),
    format('�� ������������� � ~w.~n', [_destination]).

move(_):-
    write_ln("closed path !").

current_location :-
    currentLocation(Current),
    format('�� ���������� � ~w.~n', [Current]),
    playerBalance(Balance),
    format('��� ������� ������: ~w �����.~n', [Balance]).

do_job(JobName):-
    currentLocation(Current),
    job(Current, JobName, Reward),
    playerBalance(CurrentBalance),
    NewBalance is CurrentBalance + Reward,
    retract(playerBalance(CurrentBalance)),
    assert(playerBalance(NewBalance)),
    format('�� ��������� ���������� ~w � ���������� ~w �����!~n', [JobName, Reward]),
    format('��� ����� ������: ~w �����.~n', [NewBalance]).









