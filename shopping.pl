shopping :-
    menu([milk, bread, eggs, rice, apples]).

menu(Basket) :-
    nl,
    write('d - Display items'), nl,
    write('a - Add an item'), nl,
    write('e - Exit'), nl,
    write('Enter your choice: '),
    read(Choice),
    action(Choice, Basket).

action(d, Basket) :-
    display_items(Basket),
    menu(Basket).
action(a, Basket) :-
    write('Enter an item: '),
    read(Item),
    menu([Item|Basket]).
action(e, _) :-
    write('Goodbye.'), nl.
action(Choice, Basket) :-
    Choice \= d,
    Choice \= a,
    Choice \= e,
    write('Invalid choice.'), nl,
    menu(Basket).

display_items([]).
display_items([Item|Rest]) :-
    write(Item), nl,
    display_items(Rest).
