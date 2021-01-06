desc gafanhotos;

alter table gafanhotos add column cursopreferido int; /*ADICIONA NOVA COLUNA (CAMPO)*/
alter table gafanhotos add foreign key (cursopreferido) references cursos(idcurso); /*DEFINE CHAVE ESTRANGEIRA*/

select * from gafanhotos;
select * from cursos;

update gafanhotos set cursopreferido = '6' where id = '1'; /*ATRIBUI VALOR À CHAVE ESTRANGEIRA DO REGISTRO DE ID 1*/ 

select gafanhotos.nome, cursos.nome, cursos.ano from gafanhotos join cursos; /*JUNTA DUAS TABELAS, RELACIONANDO CADA REGISTRO RELACIONADO DA TABELA 1 A UM REGISTRO DA TABELA 2*/

select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido; /*JUNTA DUAS TABELAS RELACIONANDO CHAVE ESTRANGEIRA*/

select g.nome, c.nome, c.ano
from gafanhotos as g join cursos as c
on c.idcurso = g.cursopreferido; /*USANDO AS --> "APELIDO"*/

select g.nome, c.nome, c.ano
from gafanhotos as g  left outer join cursos as c
on c.idcurso = g.cursopreferido; /*RETORNA TODOS OS REGISTROS, INDEPENDENTE DE RELACIONAMENTO*/