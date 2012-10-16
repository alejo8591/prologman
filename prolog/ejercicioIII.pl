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
sucesor(A,B):-progenitor(A,B).
sucesor(A,B):-progenitor(A,C), progenitor(C,B).
sucesor(A,B):-progenitor(A,C), progenitor(C,D),
progenitor(D,B).