:- use_module(library(clpfd)).

smm(L) :-
        L=[S,E,N,D,M,O,R,Y],
        domain(L,0,9),
        S #> 0, % ou S #> 7 (e vai 1)
        %M #> 0 ou M #= 1
        M #= 1,
        all_distinct(L),
        S*1000+E*100+N*10+D+M*1000+O*100+R*10+E #= M*10000+O*1000+N*100+E*10+Y,
        labeling([],L).

smm2(L) :-
        L=[S,E,N,D,M,O,R,Y],
        C=[C1,C2,C3], %lista de carrys
        domain(L,0,9),
        domain(C,0,1),
        all_distinct(L),
        D + E #= C1*10+Y,
        C1 + N + R #= C2*10+E,
        C2+E+O #= C3*10+N,
        C3+S+M #= M*10+O,
        labeling([],L).

cripto(LA,LB,LC,LL) :-
        append(LA,LB,L1),
        append(L1,LC,LL),
        domain(LL,0,9),
        all_distinct(LL),
        labeling([],LL).
        