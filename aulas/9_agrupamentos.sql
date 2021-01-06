select * from cursos;

select totaulas, count(*) from cursos group by totaulas order by totaulas; /*RETORNA O TOTAL DE CURSOS POR TOTAL DE AULAS ORDENADO POR TOTAL DE AULAS*/
select carga, count(nome) from cursos where totaulas = 30 group by carga;

select ano, count(*) from cursos group by ano order by count(*);
select ano, count(*) from cursos group by ano having count(ano) >= 5 order by count(*); /*RETORNA APENAS OS AGRUPAMENTOS QUE TÊM 5 OU MAIS REGISTROS*/

select avg(carga) from cursos; /*RETORNA A MÉDIA DE CARGA HORÁRIA DOS CURSOS*/

select carga, count(*) from cursos
where ano > 2015 group by carga
having carga > (select avg(carga) from cursos); /*RETORNA APENAS OS CURSOS COM CARGA MAIOR QUE A MÉDIA DE CARGA TOTAL*/