/*Lista com profissões dos alunos e seus respectivos quantitativos*/
select profissao, count(*) from gafanhotos group by profissao;


/*Quantos homens e quantas mulheres nasceram após 01/01/2005*/
select sexo, count(*) from gafanhotos where nascimento > '2005-01-01' group by sexo;


/*Lista com todos os alunos nascidos fora do Brasil, mostrando país de origem e total de pessoas nascidas lá.
Só nos interessam os países que tiverem 3 ou mais alunos com essa nacionalidade*/
select nacionalidade, count(*) from gafanhotos where nacionalidade != 'Brasil' group by nacionalidade having count(nacionalidade) >= 3;


/*Lista agrupada pela altura dos alunos, mostrando quantas pessoas pesam mais de 100kg e que estão acima da média de altura de todos os cadastrados*/
select altura, count(*) from gafanhotos where peso > '100' group by altura having altura > (select avg(altura) from gafanhotos);
