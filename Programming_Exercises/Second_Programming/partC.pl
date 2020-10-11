/*** likes movies likes moves near 2010 ***/

like_2010(X):-
    year_four_stars('Avatar',X).

notlike_2010(X):-
    year_two_stars('Avatar',X).

/*** likes movies with 100 min duration ***/

like_duration100(X):-
    duration_five_stars('Tangled',X).

notlike_duration100(X):-
    duration_three_stars('Tangled',X).

/*** a nerd person ***/

like_nerd(X):-
    genre(X,'Documentary');
    genre(X,'Sci-Fi');
    keyword(X,'artificial intelligence').

notlike_nerd(X):-
    genre(X,'Drama');
    genre(X,'Horror');
    keyword(X,'death').

/*** fanboy ***/

like_fanboy(X):-
    director(X,'James Cameron');
    actor1(X,'Paul Walker');
    actor2(X,'Paul Walker');
    actor3(X,'Paul Walker').

notlike_fanboy(X):-
    actor1(X,'Brad Pitt');
    actor2(X,'Brad Pitt');
    actor3(X,'Brad Pitt').
