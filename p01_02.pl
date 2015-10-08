/* -*- Mode:Prolog; coding:iso-8859-1; -*- */

piloto('Lamb').
piloto('Besenyei').
piloto('Chambliss').
piloto('MacLean').
piloto('Mangold').
piloto('Jones').
piloto('Bonhomme').

equipa(breitling).
equipa(redbull).
equipa(mrt).
equipa(cobra).
equipa(matador).

daEquipa('Lamb',breitling).
daEquipa('Besenyei',redbull).
daEquipa('Chambliss', redbull).
daEquipa('MacLean', mrt).
daEquipa('Mangold', cobra).
daEquipa('Jones', matador).
daEquipa('Bonhomme', matador).

aviao('MX2','Lamb').
aviao('Edge540','Besenyei').
aviao('Edge540','Chambliss').
aviao('Edge540','MacLean').
aviao('Edge540','Mangold').
aviao('Edge540','Jones').
aviao('Edge540','Bonhomme').

circuito(istambul).
circuito(budapeste).
circuito(porto).

venceu('Jones', porto).
venceu('Mangold',budapeste).
venceu('Mangold', istambul).

gates(istambul,9).
gates(budapeste,6).
gates(porto,5).

quantosVenceu(X):-venceu(X,Y), venceu(X,Z), Y \== Z.
quantosGates(X):-gates(X,Y), Y>8.
pilotar(X):-aviao(Y,X),Y\=='Edge540'.