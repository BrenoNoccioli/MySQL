alter table pessoas rename to alunos; /*alterando nome tabela*/

/*alter table pessoas add column profissao varchar (10);*/
alter table pessoas add column profissao varchar (10) after nome; /*adiciona nova coluna depois de outra específica*/

alter table pessoas modify profissao varchar(20);

alter table pessoas change profissao prof varchar(20);

/*alter table pessoas drop column profissao;*/

select * from pessoas;

/*-----------------------------------------------------*/

create table if not exists cursos(
nome varchar (30) not null unique, /*unique -> não podem ter dois nomes iguais, mas não é chave primária*/
descricao text,
carga int unsigned, /*sem sinal -> não pode ser negativo*/
totaulas int unsigned,
ano year default '2016') default charset = utf8;

alter table cursos add idcurso int first;

alter table cursos add primary key (idcurso);

