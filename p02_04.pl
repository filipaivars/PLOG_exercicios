fact(1,1).
fact(N,F) :-
        N>1,
        N1 is N-1,
        fact(N1,F1),
        F is F1*N.

fibonacci(0,1).
fibonacci(1,1).
fibonacci(N,F) :-
        N>1,
        N1 is N-1,
        fibonacci(N1,F1),
        N2 is N-2,
        fibonacci(N2,F2),
        F is F1+F2.

fact2(1,1).
fact2(N,F) :- fact2(N, 1, F).
fact2(1,F,F).
fact2(N,Acc,F) :-
        N>1,
        N1 is N-1,
        Acc1 is Acc*N,
        fact2(N1,Acc1,F).