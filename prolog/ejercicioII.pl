% Asignando valores
mujer(isabel).
mujer(clara).
mujer(ana).
mujer(patricia).
hombre(jose).
hombre(tomas).
hombre(jaime). 
progenitor(tomas,isabel).
progenitor(tomas, jose).
progenitor(clara,jose).
progenitor(jose, ana).
progenitor(jose, patricia).
progenitor(patricia,jaime).
% es madre
es_madre(X):- 
	mujer(X), 
	progenitor(X,A).
%es padre
es_padre(X):- 
	hombre(X), 
	progenitor(X,A).
%es_hijo
es_hijo(X):-
	progenitor(A,X).
%hermana de
hermana_de(X,Y):-
	mujer(X),
	progenitor(X, A),
	progenitor(Y, A).
%es abuelo
abuelo_de(X,Y):-
	hombre(X),
	es_padre(X),
	es_hijo(Y),
	progenitor(X,A),
	progenitor(A,Y).
% es abuela
abuela_de(X,Y):-
	mujer(X),
	es_madre(X),
	es_hijo(Y),
	progenitor(X,A),
	progenitor(A,Y).
% es hermano
hermanos(X,Y):-
	es_hijo(X),
	progenitor(B,X),
	progenitor(B,Y),
	X\=Y.
% tia
tia(X,Y):-
	mujer(X),
	es_hijo(Y),
	progenitor(A,Y),
	hermanos(X,A).