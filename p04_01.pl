aPath(Inicio, Fim, Cam) :-
        aPath(Inicio, Fim, Cam, [Inicio]).
aPath(Fim,Fim,Cam,Cam).
aPath(Inicio, Fim, Cam, Temp) :-
        ligado(Inicio,Prox),
        \+ member(Prox,Temp),
        append(Temp,[Prox],Nt),
        aPath(Prox,Fim,Cam,Nt).

bPath(Inicio, Fim, Cam) :-
        bPath(Inicio,Fim, Cam, [Inicio]).
bPath(Fim,Fim, _, _).
bPath(Inicio, Fim, Cam, Temp) :-
        ligado(Inicio,Prox),
        \+ member(Prox,Temp),
        append(Temp,[Prox],Nt),
        bPath(Inicio,Fim,Cam,Nt).