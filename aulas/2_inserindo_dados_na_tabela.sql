insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade) /*não informou campo id pois foi definido como NOT NULL E AUTO_INCREMENT, mas pode-se pedir o id e informar como default*/
values
(default, 'Creusa', '1965-05-06', 'F', '60.7', '1.55', default);

select * from pessoas;