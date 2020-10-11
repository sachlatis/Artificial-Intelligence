/*** RECOMENDER 1 ***/

first1(A,B):-
    director(A,X),
    director(B,X),
    genre_five_stars(A,B),
    A\=B.

first2(A,B):-
    genre_five_stars(A,B),
    A\=B.

first3(A,B):-
    genre_four_stars(A,B),
    A\=B.

/*** RECOMENDER 2 ***/

second1(A,B):-
    duration_five_stars(A,B),
    genre_five_stars(A,B),
    A\=B.

second2(A,B):-
    duration_three_stars(A,B),
    genre_four_stars(A,B),
    A\=B.

second3(A,B):-
    genre_three_stars(A,B),
    A\=B.

/*** RECOMENDER 3 ***/

third1(A,B):-  genre_five_stars(A,B),year_five_stars(A,B),A\=B.
third2(A,B):-  genre_five_stars(A,B),year_four_stars(A,B),A\=B.
third3(A,B):-  genre_five_stars(A,B), year_three_stars(A,B),A\=B.

/*** RECOMENDER 4 ***/

four1(A,B):-  genre_five_stars(A,B),score_five_stars(A,B),A\=B.
ff2(A,B):-  genre_five_stars(A,B),score_four_stars(A,B),A\=B.
ff3(A,B):-  genre_five_stars(A,B), score_three_stars(A,B),A\=B.


/*** RECOMENDER 5 ***/

five1(A,B):-  genre_five_stars(A,B),keyword_two_stars(A,B),A\=B.
five2(A,B):-  genre_five_stars(A,B),keyword_one_stars(A,B),A\=B.
five3(A,B):-  genre_five_stars(A,B),A\=B.


/*** RECOMENDER 6 ***/

person(A,B):- film_with_same_director(A,B); one_actors(A,B).

six1(A,B):-  genre_five_stars(A,B),film_with_same_director(A,B), one_actors(A,B),A\=B.
six2(A,B):-  genre_five_stars(A,B),person(A,B),A\=B.
six3(A,B):-  genre_five_stars(A,B),A\=B.

/*** RECOMENDER 7 ***/

seven1(A,B):-  genre_five_stars(A,B),year_five_stars(A,B),score_five_stars(A,B),A\=B.
seven2(A,B):-  genre_five_stars(A,B),year_four_stars(A,B),score_four_stars(A,B),A\=B.
seven3(A,B):-  genre_five_stars(A,B),year_four_stars(A,B),score_three_stars(A,B),A\=B.


s1(A,B):-  genre_five_stars(A,B),year_five_stars(A,B),score_five_stars(A,B),A\=B.
s2(A,B):-  genre_five_stars(A,B),year_four_stars(A,B),score_four_stars(A,B),not(s1(A,B)),A\=B.
s3(A,B):-  genre_five_stars(A,B),year_four_stars(A,B),score_three_stars(A,B),not(s3(A,B)),A\=B.

/*** RECOMENDER 8 ***/

eight1(A,B):-  genre_five_stars(A,B),score_five_stars(A,B),A\=B.
eight2(A,B):-  genre_four_stars(A,B),score_four_stars(A,B),A\=B.
eight3(A,B):-  genre_four_stars(A,B),score_three_stars(A,B),A\=B.

/*** fast recomender ***/

fast1(A,B):-
    director(A,X),
    director(B,X),
    A\=B.
fast2(A,B):-
    color(A,X),
    color(B,X),
    A\=B.
fast3(A,B):-
    country(A,X),
    country(B,X),
    A\=B.




/** more advances recomender

keyword_three_stars(A,B) shmainei oti exei 3 h parapanw

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

**/








