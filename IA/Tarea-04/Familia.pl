%hechos

hombre(jose).
hombre(jaime).
hombre(tomas).

mujer(clara).
mujer(ana).
mujer(patricia).
mujer(isabel).

hombre(X).
mujer(X).
progenitor(X, Y).

%reglas

progenitor(clara, jose).
progenitor(tomas, jose).
progenitor(tomas, isabel).
progenitor(jose, ana).
progenitor(jose, patricia).
progenitor(patricia, jaime).
dif(X, Y) :- X\=Y.
es_madre(X) :- mujer(X), progenitor(X,Y).
es_padre(X) :- hombre(X), progenitor(X,Y).
es_hijo(X) :- hombre(X), progenitor(Y,X).
hermana_de(X,Y) :- mujer(X), progenitor(Z,X), progenitor(Z,Y), dif(X,Y).
abuelo_de(X,Y) :- hombre(X), progenitor(X,Y),progenitor(Y,Z).
hermanos(X,Y) :- progenitor(Z,X), progenitor(Z,Y), dif(X,Y).
tia(X,Y) :- mujer(X), hermana(X,Z), progenitor(Z,Y).
