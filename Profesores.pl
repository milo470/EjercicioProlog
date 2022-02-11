:-dynamic enseña/3.
:-dynamic estudia/3.
enseña(jose,matematicas,1).
enseña(jose,matematicas,2).
enseña(maria,biologia,1).
enseña(maria,quimica,1).
enseña(teresa,geografia,1).
enseña(teresa,historia,1).
enseña(margarita,biologia,2).
enseña(margarita,quimica,2).
enseña(margarita,geografia,2).
enseña(ruth,biologia,3).
enseña(ruth,quimica,3).
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
    assert(enseña(Profesor,Materia,Grupo)),repetircont.

repetircont:-write('Desea inscribir otro profesor? (si/no)'), read(Respuesta),nl,((Respuesta==si)->contratar;fail).

es_profesor(X,Y):- enseña(X,A,B),estudia(Y,A,B).
es_alumno(X,Y):- estudia(X,A,B),enseña(Y,A,B).
misma_asignatura(X,Y):- enseña(Y,X,A).
