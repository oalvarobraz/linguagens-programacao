estados(mg,'Belo Horizonte').
estados(rj,'Rio de Janeiro').
estados(sp,'S�o Paulo').
estados(es,'Vit�ria').
capital(Estado, Capital) :- estados(Estado, Capital).
