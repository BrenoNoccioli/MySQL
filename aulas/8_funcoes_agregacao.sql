select * from cursos where nome like 'p%'; /*FILTRA NOMES COMEÇADOS POR P*/
select * from cursos where nome like '%a'; /*FILTRA NOMES TERMINADOS EM A*/
select * from cursos where nome like '%A%'; /*FILTRA NOMES QUE POSSUEM A*/
select * from cursos where nome not like '%A%'; /*FILTRA NOMES QUE NÃO CONTÉM A*/
select * from cursos where nome like 'ph%p%';
select * from cursos where nome like 'ph%p_';

select * from gafanhotos where nome like '%_silva%';

select distinct nacionalidade from gafanhotos order by nacionalidade; /*FILTRA APENAS VALORES DIFERENTES*/

select count(*) from cursos; /*RETORNA O TOTAL DE LINHAL DA TABELA*/
select count(*) from cursos where carga > 40; /*RETORNA TOTAL DE CURSOS COM CARGA MAIOR QUE 40*/

select max(totaulas) from cursos where ano = '2016'; /*RETORNA O MAIOR TOTAL DE AULAS DENTRE OS CURSOS DO ANO 2016*/
select nome, min(totaulas) from cursos where ano = '2016';

select sum(totaulas) from cursos where ano = '2016'; /*RETORNA O SOMATÓRIO DO TOTAL DE AULAS DOS CURSOS DE 2016*/
select avg(totaulas) from cursos where ano = '2016';

