:-dynamic ense�a/3.
:-dynamic estudia/3.
ense�a(jose,matematicas,1).
ense�a(jose,matematicas,2).
ense�a(maria,biologia,1).
ense�a(maria,quimica,1).
ense�a(teresa,geografia,1).
ense�a(teresa,historia,1).
ense�a(margarita,biologia,2).
ense�a(margarita,quimica,2).
ense�a(margarita,geografia,2).
ense�a(ruth,biologia,3).
ense�a(ruth,quimica,3).
estudia(ana,matematicas,2).
estudia(ana,geografia,1).
estudia(luis,historia,1).
estudia(luis,biologoia,3).
estudia(pedro,quimica,1).
estudia(pedro,matematicas,1).
estudia(juan,matematicas,1).
estudia(juan,biologia,2).
estudia(juan,historia,1).
estudia(rosa,geografia,2).
estudia(rosa,historia,1).
estudia(rosa,biologia,1).
estudia(jesus,geografia,2).
estudia(jesus,historia,1).

inscribir:-
    write('Digite el nombre del estudiante'),read(Estudiante),nl,
    write('Digite el nombre de la materia'),read(Materia),nl,
    write('Digite el grupo de la materia'),read(Grupo),nl,
    assert(estudia(Estudiante,Materia,Grupo)),repetirins.

repetirins:- write('Desea inscribir otro estudiante? (si/no)'), read(Respuesta),nl,((Respuesta==si)->inscribir;fail).

contratar:-
    write('Digite el nombre del profesor'),read(Profesor),nl,
    write('Digite el nombre de la materia'),read(Materia),nl,
    write('Digite el grupo de la materia'),read(Grupo),nl,
    assert(ense�a(Profesor,Materia,Grupo)),repetircont.

repetircont:-write('Desea inscribir otro profesor? (si/no)'), read(Respuesta),nl,((Respuesta==si)->contratar;fail).

es_profesor(X,Y):- ense�a(X,A,B),estudia(Y,A,B).
es_alumno(X,Y):- estudia(X,A,B),ense�a(Y,A,B).
misma_asignatura(X,Y):- ense�a(Y,X,A).
