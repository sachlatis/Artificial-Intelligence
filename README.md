# Artificial Intelligence: Theory and applications

This repository contains the programming exercises and the theory assignments for ECE NTUA course Artificial Intelligence

## First Programming Exercise
The aim of this exercise is to apply search algorithms and find the optimal path in a square grid NxN. <br/>
In the *first part* of this exercise many probabilistic grids were created. Each grid had obstacles, empty spaces, a grid, a starting point and a goal. The obstacle distribution was radom and described by a given probability p. The main goal of this part was to place the obstacles as random as possible. After that you can see the visualization of the final grids for different given p. <br/>
In the *second part* some search algorithms were implemented, more specifically BFS, Best First and A*. Moreover different heuristic functions and strategies were implemented. Hope that you will find my ideas regarding heuristics interesting! <br/>
The final result conclude an video visualization for each step of the algorithm, but these videos could not properly loaded at github <br/>
In the *third part* the different algorithms were compared. This step took a lot of time, and interesting results were concluded. <br/>

### Some examples
A radom grid: <br/>
<img src="/images/first/grid1.png" width="25%" height ="25%">

The result of A* algorith on a radom grid: <br/>
<img src="/images/first/A*_result.png" width="25%" height ="25%"> 

## Second Programming Exercise
The aim of this exercise is to create a simple movie recommender system using Prolog. This result would be concluded through the features of the films and the given ratings of other movies for the examine user.  </br>
In the *first part* of this exercise we examine the dataset and create some simple prolog rules. Some of the rules could be to find movies with really close genres, or with enough close genres, find movies with the same plots etc. The final result was described with classes of similarity for each examined movie.
In the *second part* of this exercise we had to combine the rules that we created at the first part in order to create a recommender system. This system will take as input a movie, and will give as output the 10 best matching movies.<br/>
In the *third part* we considered the overall rating of other movies for the examine user. So the recommender system had to overview the user's old preferences and use the existing rules of the second part. <br/>
Questions such as “What is more important: the user’s old preferences or the already knowledge of association between the films?” were solved through many simulations in the given dataset.<br/>

### Some examples
Some classes of similarity for "Harry Potter and the Half-Blood Prince" : <br/>
<img src="/images/second/classes.png" width="25%" height ="25%">

Simple Recommender for "Star Wars: Episode III - Revenge of th Sith" : <br/>
<img src="/images/second/simple_recommender.png" width="25%" height ="25%">
