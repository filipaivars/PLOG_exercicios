delete_one(X,L,L1) :-
        append(A,[X|B],L),
        append(A,B,L1).

delete_all(X,L,L2) :-
        delete_one(X,L,L1),
        delete_all(X,L1,L2).
delete_all(X,L,L) :- \+ member(X,L).