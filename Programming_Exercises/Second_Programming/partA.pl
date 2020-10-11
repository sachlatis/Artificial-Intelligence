/***
ABOUT GENRES
***/

/**

orizw to plh8ari8mo twn genre gia ka8e tainia

***/
atleast_five_genre(A) :-
    genre(A,First),
    genre(A,Second),
    genre(A,Third),
    genre(A,Fourth),
    genre(A,Fiveth),
    First\=Second,
    First\=Third,
    First\=Fourth,
    First\=Fiveth,
    Second\=Third,
    Second\=Fourth,
    Second\=Fiveth,
    Third\=Fourth,
    Third\=Fiveth,
    Fourth\=Fiveth.

atleast_four_genre(A) :-
    genre(A,First),
    genre(A,Second),
    genre(A,Third),
    genre(A,Fourth),
    First\=Second,
    First\=Third,
    First\=Fourth,
    Second\=Third,
    Second\=Fourth,
    Third\=Fourth.

atleast_three_genre(A) :-
    genre(A,First),
    genre(A,Second),
    genre(A,Third),
    First\=Second,
    Second\=Third,
    Third\=First.

atleast_two_genre(A) :-
    genre(A,First),
    genre(A,Second),
    First\=Second.

one_genre(A) :-
    not(atleast_two_genre(A)).

two_genre(A):-
    atleast_two_genre(A),
    not(atleast_three_genre(A)).

three_genre(A):-
    atleast_three_genre(A),
    not(atleast_four_genre(A)).

four_genre(A):-
    atleast_four_genre(A),
    not(atleast_five_genre(A)).

five_or_more_genre(A):-
    atleast_five_genre(A).
/***

telos orismos pli8arimou

***/

one_genre_five_stars(A,B):-
    one_genre(A),
    genre(A,X),
    genre(B,X),
    A\= B.

one_genre_one_stars(A,B):-
    one_genre(A),
    A\=B.

two_genre_five_stars(A,B):-
    two_genre(A),
    genre(A,First),
    genre(B,First),
    genre(A,Second),
    genre(B,Second),
    A\=B,
    First\=Second.

two_genre_three_stars(A,B):-
    two_genre(A),
    genre(A,First),
    genre(B,First),
    A\=B.

two_genre_one_stars(A,B):-
    two_genre(A),
    A\=B.

three_genre_five_stars(A,B):-
    three_genre(A),
    genre(A,First),
    genre(A,Second),
    genre(A,Third),
    genre(B,First),
    genre(B,Second),
    genre(B,Third),
    A\=B,
    First\=Second,
    Second\=Third,
    Third\=First.

three_genre_four_stars(A,B):-
    three_genre(A),
    genre(A,First),
    genre(A,Second),
    genre(B,First),
    genre(B,Second),
    A\=B,
    First\=Second.

three_genre_three_stars(A,B):-
    three_genre(A),
    genre(A,First),
    genre(B,First),
    A\=B.

three_genre_one_stars(A,B):-
    three_genre(A),
    A\=B.

four_genre_five_stars(A,B):-
    four_genre(A),
    genre(A,First),
    genre(A,Second),
    genre(A,Third),
    genre(A,Fourth),
    genre(B,First),
    genre(B,Second),
    genre(B,Third),
    genre(B,Fourth),
    First\=Second,
    First\=Third,
    First\=Fourth,
    Second\=Third,
    Second\=Fourth,
    Third\=Fourth,
    A\=B.

four_genre_four_stars(A,B):-
    four_genre(A),
    genre(A,First),
    genre(A,Second),
    genre(A,Third),
    genre(B,First),
    genre(B,Second),
    genre(B,Third),
    First\=Second,
    First\=Third,
    Second\=Third,
    A\=B.

four_genre_three_stars(A,B):-
    four_genre(A),
    genre(A,First),
    genre(A,Second),
    genre(B,First),
    genre(B,Second),
    First\=Second,
    A\=B.

four_genre_two_stars(A,B):-
    four_genre(A),
    genre(A,First),
    genre(B,First),
    A\=B.

four_genre_one_stars(A,B):-
    four_genre(A),
    A\=B.

fiveOrMore_genre_five_stars(A,B):-
    five_or_more_genre(A),
    genre(A,First),
    genre(A,Second),
    genre(A,Third),
    genre(A,Fourth),
    genre(A,Fiveth),
    genre(B,First),
    genre(B,Second),
    genre(B,Third),
    genre(B,Fourth),
    genre(B,Fiveth),
    A\=B,
    First\=Second,
    First\=Third,
    First\=Fourth,
    First\=Fiveth,
    Second\=Third,
    Second\=Fourth,
    Second\=Fiveth,
    Third\=Fourth,
    Third\=Fiveth,
    Fourth\=Fiveth.

fiveOrMore_genre_four_stars(A,B):-
    five_or_more_genre(A),
    genre(A,First),
    genre(A,Second),
    genre(A,Third),
    genre(A,Fourth),
    genre(B,First),
    genre(B,Second),
    genre(B,Third),
    genre(B,Fourth),
    A\=B,
    First\=Second,
    First\=Third,
    First\=Fourth,
    Second\=Third,
    Second\=Fourth,
    Third\=Fourth.

fiveOrMore_genre_three_stars(A,B):-
    five_or_more_genre(A),
    genre(A,First),
    genre(A,Second),
    genre(A,Third),
    genre(B,First),
    genre(B,Second),
    genre(B,Third),
    A\=B,
    First\=Second,
    First\=Third,
    Second\=Third.

fiveOrMore_genre_two_stars(A,B):-
    five_or_more_genre(A),
    genre(A,First),
    genre(A,Second),
    genre(B,First),
    genre(B,Second),
    A\=B,
    First\=Second.

fiveOrMore_genre_twoAgain_stars(A,B):-
    five_or_more_genre(A),
    genre(A,First),
    genre(B,First),
    A\=B.

fiveOrMore_genre_one_stars(A,B):-
    five_or_more_genre(A),
    A\=B.

genre_five_stars(A,B):-
    one_genre_five_stars(A,B);
    two_genre_five_stars(A,B);
    three_genre_five_stars(A,B);
    four_genre_five_stars(A,B);
    fiveOrMore_genre_five_stars(A,B).

genre_four_stars(A,B):-
    three_genre_four_stars(A,B);
    four_genre_four_stars(A,B);
    fiveOrMore_genre_four_stars(A,B).

genre_three_stars(A,B):-
    two_genre_three_stars(A,B);
    three_genre_three_stars(A,B);
    four_genre_three_stars(A,B);
    fiveOrMore_genre_three_stars(A,B).

genre_two_stars(A,B):-
    four_genre_two_stars(A,B);
    fiveOrMore_genre_twoAgain_stars(A,B);
    fiveOrMore_genre_two_stars(A,B).

genre_one_stars(A,B):-
    one_genre_one_stars(A,B);
    two_genre_one_stars(A,B);
    three_genre_one_stars(A,B);
    four_genre_one_stars(A,B);
    fiveOrMore_genre_one_stars(A,B).


/***
about director
***/

film_with_same_director(A,B):-
director(A, X),
director(B, X),
A \= B.

/***
about keywords
***/

atleast_five_keyword(A) :-
    keyword(A,First),
    keyword(A,Second),
    keyword(A,Third),
    keyword(A,Fourth),
    keyword(A,Fiveth),
    First\=Second,
    First\=Third,
    First\=Fourth,
    First\=Fiveth,
    Second\=Third,
    Second\=Fourth,
    Second\=Fiveth,
    Third\=Fourth,
    Third\=Fiveth,
    Fourth\=Fiveth.

atleast_four_keyword(A) :-
    keyword(A,First),
    keyword(A,Second),
    keyword(A,Third),
    keyword(A,Fourth),
    First\=Second,
    First\=Third,
    First\=Fourth,
    Second\=Third,
    Second\=Fourth,
    Third\=Fourth.

atleast_three_keyword(A) :-
    keyword(A,First),
    keyword(A,Second),
    keyword(A,Third),
    First\=Second,
    Second\=Third,
    Third\=First.

atleast_two_keyword(A) :-
    keyword(A,First),
    keyword(A,Second),
    First\=Second.

one_keyword(A) :-
    not(atleast_two_keyword(A)).

two_keyword(A):-
    atleast_two_keyword(A),
    not(atleast_three_keyword(A)).

three_keyword(A):-
    atleast_three_keyword(A),
    not(atleast_four_keyword(A)).

four_keyword(A):-
    atleast_four_keyword(A),
    not(atleast_five_keyword(A)).

five_or_more_keyword(A):-
    atleast_five_keyword(A).


one_keyword_five_stars(A,B):-
    one_keyword(A),
    keyword(A,X),
    keyword(B,X),
    A \= B.

one_keyword_one_stars(A,B):-
    one_keyword(A),
    A\=B.

two_keyword_five_stars(A,B):-
    two_keyword(A),
    keyword(A,First),
    keyword(B,First),
    keyword(A,Second),
    keyword(B,Second),
    A\=B,
    First\=Second.

two_keyword_three_stars(A,B):-
    two_keyword(A),
    keyword(A,First),
    keyword(B,First),
    A\=B.

two_keyword_one_stars(A,B):-
    two_keyword(A),
    A\=B.

three_keyword_five_stars(A,B):-
    three_keyword(A),
    keyword(A,First),
    keyword(A,Second),
    keyword(A,Third),
    keyword(B,First),
    keyword(B,Second),
    keyword(B,Third),
    A\=B,
    First\=Second,
    Second\=Third,
    Third\=First.

three_keyword_four_stars(A,B):-
    three_keyword(A),
    keyword(A,First),
    keyword(A,Second),
    keyword(B,First),
    keyword(B,Second),
    A\=B,
    First\=Second.

three_keyword_three_stars(A,B):-
    three_keyword(A),
    keyword(A,First),
    keyword(B,First),
    A\=B.

three_keyword_one_stars(A,B):-
    three_keyword(A),
    A\=B.

four_keyword_five_stars(A,B):-
    four_keyword(A),
    keyword(A,First),
    keyword(A,Second),
    keyword(A,Third),
    keyword(A,Fourth),
    keyword(B,First),
    keyword(B,Second),
    keyword(B,Third),
    keyword(B,Fourth),
    First\=Second,
    First\=Third,
    First\=Fourth,
    Second\=Third,
    Second\=Fourth,
    Third\=Fourth,
    A\=B.

four_keyword_four_stars(A,B):-
    four_keyword(A),
    keyword(A,First),
    keyword(A,Second),
    keyword(A,Third),
    keyword(B,First),
    keyword(B,Second),
    keyword(B,Third),
    First\=Second,
    First\=Third,
    Second\=Third,
    A\=B.

four_keyword_three_stars(A,B):-
    four_keyword(A),
    keyword(A,First),
    keyword(A,Second),
    keyword(B,First),
    keyword(B,Second),
    First\=Second,
    A\=B.

four_keyword_two_stars(A,B):-
    four_keyword(A),
    keyword(A,First),
    keyword(B,First),
    A\=B.

four_keyword_one_stars(A,B):-
    four_keyword(A),
    A\=B.

fiveOrMore_keyword_five_stars(A,B):-
    five_or_more_keyword(A),
    keyword(A,First),
    keyword(A,Second),
    keyword(A,Third),
    keyword(A,Fourth),
    keyword(A,Fiveth),
    keyword(B,First),
    keyword(B,Second),
    keyword(B,Third),
    keyword(B,Fourth),
    keyword(B,Fiveth),
    A\=B,
    First\=Second,
    First\=Third,
    First\=Fourth,
    First\=Fiveth,
    Second\=Third,
    Second\=Fourth,
    Second\=Fiveth,
    Third\=Fourth,
    Third\=Fiveth,
    Fourth\=Fiveth.

fiveOrMore_keyword_four_stars(A,B):-
    five_or_more_keyword(A),
    keyword(A,First),
    keyword(A,Second),
    keyword(A,Third),
    keyword(A,Fourth),
    keyword(B,First),
    keyword(B,Second),
    keyword(B,Third),
    keyword(B,Fourth),
    A\=B,
    First\=Second,
    First\=Third,
    First\=Fourth,
    Second\=Third,
    Second\=Fourth,
    Third\=Fourth.

fiveOrMore_keyword_three_stars(A,B):-
    five_or_more_keyword(A),
    keyword(A,First),
    keyword(A,Second),
    keyword(A,Third),
    keyword(B,First),
    keyword(B,Second),
    keyword(B,Third),
    A\=B,
    First\=Second,
    First\=Third,
    Second\=Third.

fiveOrMore_keyword_two_stars(A,B):-
    five_or_more_keyword(A),
    keyword(A,First),
    keyword(A,Second),
    keyword(B,First),
    keyword(B,Second),
    A\=B,
    First\=Second.

fiveOrMore_keyword_twoAgain_stars(A,B):-
    five_or_more_keyword(A),
    keyword(A,First),
    keyword(B,First),
    A\=B.

fiveOrMore_keyword_one_stars(A,B):-
    five_or_more_keyword(A),
    A\=B.

keyword_five_stars(A,B):-
    one_keyword_five_stars(A,B);
    two_keyword_five_stars(A,B);
    three_keyword_five_stars(A,B);
    four_keyword_five_stars(A,B);
    fiveOrMore_keyword_five_stars(A,B).

keyword_four_stars(A,B):-
    three_keyword_four_stars(A,B);
    four_keyword_four_stars(A,B);
    fiveOrMore_keyword_four_stars(A,B).

keyword_three_stars(A,B):-
    two_keyword_three_stars(A,B);
    three_keyword_three_stars(A,B);
    four_keyword_three_stars(A,B);
    fiveOrMore_keyword_three_stars(A,B).

keyword_two_stars(A,B):-
    four_keyword_two_stars(A,B);
    fiveOrMore_keyword_twoAgain_stars(A,B);
    fiveOrMore_keyword_two_stars(A,B).

keyword_one_stars(A,B):-
    one_keyword_one_stars(A,B);
    two_keyword_one_stars(A,B);
    three_keyword_one_stars(A,B);
    four_keyword_one_stars(A,B);
    fiveOrMore_keyword_one_stars(A,B).

/**

actor stuff

**/

three_actors(A,B):-
    actor1(A,X),
    actor1(B,X),
    actor2(A,Y),
    actor2(B,Y),
    actor3(A,Z),
    actor3(B,Z),
    A\=B,
    X\=Y,
    Y\=Z,
    Z\=X.

two_actors_case12(A,B):-
    actor1(A,X),
    actor1(B,X),
    actor2(A,Y),
    actor2(B,Y),
    A\=B,
    X\=Y.

two_actors_case13(A,B):-
    actor1(A,X),
    actor1(B,X),
    actor3(A,Y),
    actor3(B,Y),
    A\=B,
    X\=Y.

two_actors_case23(A,B):-
    actor2(A,X),
    actor2(B,X),
    actor3(A,Y),
    actor3(B,Y),
    A\=B,
    X\=Y.

has_two_actors(A,B):-
    two_actors_case12(A,B);
    two_actors_case13(A,B);
    two_actors_case23(A,B).

two_actors(A,B):-
    has_two_actors(A,B),
    A\=B.

one_actors_case1(A,B):-
    actor1(A,X),
    actor1(B,X),
    A\=B.

one_actors_case2(A,B):-
    actor2(A,X),
    actor2(B,X),
    A\=B.

one_actors_case3(A,B):-
    actor3(A,X),
    actor3(B,X),
    A\=B.

has_one_actors(A,B):-
    one_actors_case1(A,B);
    one_actors_case2(A,B);
    one_actors_case3(A,B).

one_actors(A,B):-
    has_one_actors(A,B),
    A\=B.

/***

language stuff

***/

film_with_same_language(A,B):-
    language(A, X),
    language(B, X),
    A \= B.

/***

color stuff

***/

film_with_same_color(A,B):-
    color(A, X),
    color(B, X),
    A \= B.

/***

country stuff

***/

film_with_same_country(A,B):-
country(A, X),
country(B, X),
A \= B.

/****

year

*****/

this_year_case1(X,Y):-
    X >= Y,
    Z is X - Y,
    Z =< 1.

this_year_case2(X,Y):-
    Y >= X,
    Z is Y - X,
    Z =< 1.

this_year(X,Y):-
    this_year_case1(X,Y);
    this_year_case2(X,Y).


close_close_year_case1(X,Y):-
    X >= Y,
    Z is X - Y,
    Z =< 5.

close_close_year_case2(X,Y):-
    Y >= X,
    Z is Y - X,
    Z =< 5.

close_close_year(X,Y):-
    close_close_year_case1(X,Y);
    close_close_year_case2(X,Y).


close_year_case1(X,Y):-
    X >= Y,
    Z is X - Y,
    Z =< 10.

close_year_case2(X,Y):-
    Y >= X,
    Z is Y - X,
    Z =< 10.

close_year(X,Y):-
    close_year_case1(X,Y);
    close_year_case2(X,Y).

ok_year_case1(X,Y):-
    X >= Y,
    Z is X - Y,
    Z =< 20.

ok_year_case2(X,Y):-
    Y >= X,
    Z is Y - X,
    Z =< 20.

ok_year(X,Y):-
    ok_year_case1(X,Y);
    ok_year_case2(X,Y).


year_five_stars(A,B):-
    year(A,X),
    year(B,Y),
    A\=B,
    this_year(X,Y).

year_four_stars(A,B):-
    year(A,X),
    year(B,Y),
    close_close_year(X,Y).

year_three_stars(A,B):-
    year(A,X),
    year(B,Y),
    A\=B,
    close_year(X,Y).

year_two_stars(A,B):-
    year(A,X),
    year(B,Y),
    A\=B,
    ok_year(X,Y).

/****

duration

*****/

close_duration_case1(X,Y):-
    X >= Y,
    Z is X - Y,
    Z =< 30.

close_duration_case2(X,Y):-
    Y >= X,
    Z is Y - X,
    Z =< 30.

close_duration(X,Y):-
    close_duration_case1(X,Y);
    close_duration_case2(X,Y).

ok_duration_case1(X,Y):-
    X >= Y,
    Z is X - Y,
    Z =< 50.

ok_duration_case2(X,Y):-
    Y >= X,
    Z is Y - X,
    Z =< 50.

ok_duration(X,Y):-
    ok_duration_case1(X,Y);
    ok_duration_case2(X,Y).

duration_five_stars(A,B):-
    duration(A,X),
    duration(B,Y),
    A\=B,
    close_duration(X,Y).

duration_three_stars(A,B):-
    duration(A,X),
    duration(B,Y),
    A\=B,
    ok_duration(X,Y).

/****

imdb_score

*****/

this_score_case1(X,Y):-
    X >= Y,
    Z is X - Y,
    Z =< 0.2.

this_score_case2(X,Y):-
    Y >= X,
    Z is Y - X,
    Z =< 0.2.

this_score(X,Y):-
    this_score_case1(X,Y);
    this_score_case2(X,Y).


close_close_score_case1(X,Y):-
    X >= Y,
    Z is X - Y,
    Z =< 0.5.

close_close_score_case2(X,Y):-
    Y >= X,
    Z is Y - X,
    Z =< 0.5.

close_close_score(X,Y):-
    close_close_score_case1(X,Y);
    close_close_score_case2(X,Y).


close_score_case1(X,Y):-
    X >= Y,
    Z is X - Y,
    Z =< 1.

close_score_case2(X,Y):-
    Y >= X,
    Z is Y - X,
    Z =< 1.

close_score(X,Y):-
    close_score_case1(X,Y);
    close_score_case2(X,Y).

ok_score_case1(X,Y):-
    X >= Y,
    Z is X - Y,
    Z =< 1.7.

ok_score_case2(X,Y):-
    Y >= X,
    Z is Y - X,
    Z =< 1.7.

ok_score(X,Y):-
    ok_score_case1(X,Y);
    ok_score_case2(X,Y).


score_five_stars(A,B):-
    score(A,X),
    score(B,Y),
    A\=B,
    this_score(X,Y).

score_four_stars(A,B):-
    score(A,X),
    score(B,Y),
    A\=B,
    close_close_score(X,Y).

score_three_stars(A,B):-
    score(A,X),
    score(B,Y),
    A\=B,
    close_score(X,Y).

score_two_stars(A,B):-
    score(A,X),
    score(B,Y),
    A\=B,
    ok_score(X,Y).

/*** Part B ***/

first(A,B):-
film_with_same_color(A,B),
film_with_same_language(A,B),
genre_five_stars(A,B),
keyword_three_stars(A,B),
year_five_stars(A,B),
duration_five_stars(A,B),
film_with_same_director(A,B),
one_actors(A,B),
A\=B.

second(A,B):-
film_with_same_color(A,B),
film_with_same_language(A,B),
genre_five_stars(A,B),
keyword_two_stars(A,B),
year_five_stars(A,B),
duration_five_stars(A,B),
film_with_same_director(A,B),
one_actors(A,B),
A\=B.

three(A,B):-
film_with_same_color(A,B),
film_with_same_language(A,B),
genre_five_stars(A,B),
keyword_two_stars(A,B),
year_four_stars(A,B),
duration_five_stars(A,B),
film_with_same_director(A,B),
one_actors(A,B),
A\=B.

four(A,B):-
film_with_same_color(A,B),
film_with_same_language(A,B),
genre_five_stars(A,B),
keyword_one_stars(A,B),
year_four_stars(A,B),
duration_five_stars(A,B),
one_actors(A,B),
A\=B.

five(A,B):-
film_with_same_color(A,B),
film_with_same_language(A,B),
genre_five_stars(A,B),
year_four_stars(A,B),
duration_five_stars(A,B),
one_actors(A,B),
A\=B.

five(A,B):-
film_with_same_color(A,B),
film_with_same_language(A,B),
genre_four_stars(A,B),
year_four_stars(A,B),
duration_three_stars(A,B),
A\=B.

six(A,B):-
film_with_same_color(A,B),
film_with_same_language(A,B),
genre_four_stars(A,B),
keyword_one_stars(A,B),
year_four_stars(A,B),
duration_three_stars(A,B),
A\=B.

seven(A,B):-
film_with_same_color(A,B),
film_with_same_language(A,B),
genre_three_stars(A,B),
keyword_one_stars(A,B),
year_four_stars(A,B),
duration_three_stars(A,B),
A\=B.

eight(A,B):-
film_with_same_color(A,B),
film_with_same_language(A,B),
genre_three_stars(A,B),
year_four_stars(A,B),
duration_three_stars(A,B),
A\=B.

nine(A,B):-
film_with_same_color(A,B),
film_with_same_language(A,B),
genre_four_stars(A,B),
A\=B.

nine(A,B):-
film_with_same_color(A,B),
film_with_same_language(A,B),
genre_three_stars(A,B),
A\=B.








