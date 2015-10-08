/* -*- Mode:Prolog; coding:iso-8859-1; -*- */

male(aldo).
male(lincoln).
male(michael).
male('LJ').

female(chris).
female(lisa).
female(sara).
female(ella).

parent(aldo,lincoln).
parent(chris,lincoln).
parent(aldo,michael).
parent(chris,michael).
parent(lisa,'LJ').
parent(lincoln,'LJ').
parent(michael,ella).
parent(sara,ella).

father(X,Y) :- male(X), parent(X,Y).
mother(X,Y) :- female(X), parent(X,Y).