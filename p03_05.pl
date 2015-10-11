membro(X,[X|_]).
membro(X,[_|T]) :- membro(X,T).

membro2(X,L):-
        append(_,[X|_],L).

last(X,L) :-
        append(_,[X],L).

nmembro(0, [H|_], H).
nmembro(N, [_|T], X) :- 
        N>0,
        M is N-1,
        nmembro(M, T, X).