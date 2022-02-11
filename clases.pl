:- nl,nl,write('Digite \'profesores.\' o \'estudiantes.\' para iniciar:  ?- preguntar. '), nl,nl,nl.

:- dynamic dicta/2.
:- dynamic cursa/2.


dicta(jose,matematicas1).
dicta(jose,matematicas2).
dicta(maria,biologia1).
dicta(maria,quimica1).
dicta(teresa,geografia1).
dicta(teresa,historia1).
dicta(ruth,biologia3).
dicta(ruth,quimica3).
cursa(ana,matematicas2).
cursa(ana,geografia1).
cursa(luis,historia1).
cursa(luis,biologia3).
cursa(pedro,quimica1).
cursa(pedro,matematicas1).
cursa(juan,matematicas1).
cursa(juan,biologia2).
cursa(juan,historia1).
cursa(rosa,geografia2).
cursa(rosa,biologia1).
cursa(rosa,historia1).
cursa(jesus,geografia2).
cursa(jesus,historia1).

enseña(X,Y) :-dicta(X,A),cursa(Y,A).
enseñan(X,Z,Y) :-enseña(X,Y),enseña(Z,Y).
aprende(Y,X) :-dicta(X,A),cursa(Y,A).
aprenden(Y,W,X) :-aprende(Y,X),aprende(W,X).



profesores:-
	write('Digite el nombre del profesor (con minuscula y terminado en punto) '), read(Profesor), nl,
	write('Digite el nombre de la materia (con minuscula y terminado en punto) '), read(Materia), nl,
	assert(dicta(Profesor,Materia)),repetir.

repetir:- write('desea incluir otro profesor y su materia? (si/no) '), read(respuesta),nl, ((respuesta==si)->profesores;fail).

undo:- dicta(_,_),fail.
undo.

estudiantes:-
	write('Digite el nombre del estudiante (con minuscula y terminado en punto) '), read(Estudiante), nl,
	write('Digite el nombre de la materia (con minuscula y terminado en punto) '), read(Materia), nl,
	assert(cursa(Estudiante,Materia)),repetir1.

repetir1:- write('desea incluir otro estudiante y su materia? (si/no) '), read(respuesta1),nl, ((respuesta1==si)->estudiantes;fail).

undo:- cursa(_,_),fail.
undo.
