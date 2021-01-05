insert into cursos values
('1', 'HTML4', 'Curso de HTML', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Bancos de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2018'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

update cursos set nome = 'HTML5' where idcurso = '1'; /*alterando registro na linha*/

update cursos set nome = 'PHP', ano = '2015' where idcurso = '4'; /*alterando mais de um registro ao mesmo tempo*/

update cursos set nome = 'Java', carga = '40', ano = '2015' where idcurso = '5' limit 1; /*limitando a execução do comando a 1 linha*/

update cursos
set ano = '2018', carga = '0'
where ano = '2050' limit 1;

delete from cursos where idcurso ='8'; /*apagando apenas uma linha*/
delete from cursos where ano = '2018' limit 2;

select  * from cursos;

