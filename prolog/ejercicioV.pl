igual(A,B):- not(A\==B).
miembro(X,[X|_]).
miembro(X,[_|Z]):-
	miembro(X,Z).
longitud([],0).
longitud([R],N):-
	write(R),
	longitud(R,NA),
	write(R),
	N is NA + 1,
	write(NA),
	nl.
% partiendo de lista vacia
contar(_, [], 0) :- !.
% cuando el valor a buscar esta en la cabeza de la lista
contar(X, [X|T], N) :- 
    contar(X, T, N2), 
    N is N2 + 1.    
% cuando el valor a buscar esta en la cola de la lista
contar(X, [Y|T], N) :- 
    X \= Y,          
    contar(X, T, N).