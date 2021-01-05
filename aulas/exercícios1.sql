/*Filtrar lista com o nome de todas as alunas*/
select nome from gafanhotos where sexo = 'F';

/*Lista com os dados de todos os nascidos entre 1/01/2000 e 31/12/2015*/
select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31';

/*Lista com nome de todos os homens que trabalham como programadores*/
select nome from gafanhotos where profissao = 'Programador';

/*Lista com todos os dados de todas as mulheres que nasceram no Brasil e têm o nome iniciado por J*/
select * from gafanhotos where nacionalidade = 'Brasil' and nome like 'J%';

/*Lista com nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100Kg;*/
select nome, nacionalidade from gafanhotos where sexo = 'M' and nome like '%Silva%' and nacionalidade != 'Brasil' and peso < '100';

/*Maior altura entre os alunos homens que moram no Brasil*/
select max(altura) from gafanhotos where nacionalidade = 'Brasil';

/*Média de peso dos alunos cadastrados*/
select avg(peso) from gafanhotos;

/*Menor peso entre alunas nascidas fora do Brasil e entre 01/01/1990 e 31/12/2000*/
select min(peso) from gafanhotos where nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

/*Quantas alunas têm mais de 1.90m de altura*/
select count(*) from gafanhotos where sexo = 'F' and altura > '1.9';



