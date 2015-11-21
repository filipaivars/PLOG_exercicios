:- use_module(library(clpfd)).

qm(L) :-
        L = [V1,V2,V3,V4,V5,V6,V7,V8,V9],
        domain(L,1,9),
        all_distinct(L),
        V1 + V2 + V3 #= Soma,
        V4 + V5 + V6 #= Soma,
        V7 + V8 + V9 #= Soma,
        V1 + V4 + V7 #= Soma,
        V2 + V5 + V8 #= Soma,
        V3 + V6 + V9 #= Soma,
        V1 + V5 + V9 #= Soma,
        V3 + V5 + V7 #= Soma,
        labeling([],L).