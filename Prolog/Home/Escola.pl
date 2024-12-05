aluno(joao,calculo).
aluno(maria,calculo).
aluno(joel,programacao).
aluno(joel,estrutura).
frequenta(joao,puc).
frequenta(maria,puc).
frequenta(joel,ufrj).

professor(carlos,calculo).
professor(ana_paula,estrutura).
professor(pedro,programacao).
funcionario(pedro,ufrj).
funcionario(ana_paula,puc).
funcionario(carlos,puc).

% Quem são os alunos do professor X?%

alunos_do_professor(Y, X) :- professor(X, Z), aluno(Y, Z).

% Quem são as pessoas que estão asssociadas a uma universidade X?
% (alunos e professores)

pessoas_associadas_universidade(Pessoa, Faculdade) :- frequenta(Pessoa, Faculdade); funcionario(Pessoa, Faculdade).
