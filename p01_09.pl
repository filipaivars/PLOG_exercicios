/* -*- Mode:Prolog; coding:iso-8859-1; -*- */

aluno(joao, paradigmas).
aluno(maria, paradigmas).
aluno(joel, lab2).
aluno(joel, estruturas).

frequenta(joao, feup).
frequenta(maria, feup).
frequenta(joel, ist).

professor(carlos, paradigmas).
professor(ana_paula, estruturas).
professor(pedro, lab2).

funcionario(pedro, ist).
funcionario(ana_paula, feup).
funcionario(carlos, feup).

alunosDoProfessor(Y,X) :- professor(X,A), aluno(Y,A).

pessoasDaUniversidade(X,Y):-professor(X,_), funcionario(X,Y).
pessoasDaUniversidade(X,Y):-aluno(X,_), frequenta(X,Y). 

colega(X,Y) :- aluno(X,A), aluno(Y,A), X\==Y.
colega(X,Y) :- frequenta(X,A), frequenta(Y,A), X\==Y.
colega(X,Y) :- funcionario(X,A), funcionario(Y,A), X\==Y.