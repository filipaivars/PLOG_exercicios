:- use_module(library(clpfd)).

perus(L) :- 
        L = [A, B, P],
        A in 1..9,
        B in 0..9,
        B mod 2 #=0,
        A * 1000 + 670 + B #= P * 72,
        labeling([],L).