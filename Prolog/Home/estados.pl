estados(mg,'Belo Horizonte').
estados(rj,'Rio de Janeiro').
estados(sp,'São Paulo').
estados(es,'Vitória').
capital(Estado, Capital) :- estados(Estado, Capital).
