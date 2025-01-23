animal(urso).
animal(peixe).
animal(peixinho).
animal(lince).
animal(raposa).
animal(coelho).
animal(veado).
animal(guaxinim).

planta(alga).
planta(grama).

come(urso,peixe).
come(lince,veado).
come(urso,raposa).
come(urso,veado).
come(peixe,peixinho).
come(peixinho,alga).
come(raposa,coelho).
come(coelho,grama).
come(veado,grama).
come(urso,guaxinim).

cadeiaAlimentar(Predador, Presa) :- come(Predador, Presa).
cadeiaAlimentar(Predador, Presa) :- come(Predador, W), cadeiaAlimentar(W, Presa).
cadeiaAlimentar(Presa, Predador) :- cadeiaAlimentar(Predador, Presa).
