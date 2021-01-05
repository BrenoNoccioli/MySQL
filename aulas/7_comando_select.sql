
select * from cursos order by nome; /*selecionar todas as colunas ordenando por nome*/
select * from cursos order by nome desc;

select ano, nome, carga from cursos order by ano, nome; /*filtrando campos específicos*/

select * from cursos where ano = '2016' order by nome; /*filtrando linhas específicas e ordenando por nome*/
select nome, carga from cursos where ano = '2016' order by nome; /*filtando campos específicos de linhas específicas e ordenando por nome*/

select nome, descricao from cursos where ano <= '2015' order by nome; /*usando operadores relacionais*/

select nome, ano from cursos where ano between 2014 and 2016 order by ano, nome;

