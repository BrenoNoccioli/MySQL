create database cadastro
default character set utf8 /* CONSTRAINTS para definir configuração inicial da database*/
default collate utf8_general_ci;

create table pessoas (
id int not null auto_increment, /*definindo autoincremento do campo sem necessidade de preenchimento*/
nome varchar(30) not null, /*não pode ser nulo - requer preenchimento*/
nascimento date,
sexo enum('M', 'F'), /*só aceita os caracteres M ou F (maiúsculos)*/ 
peso decimal(5,2), /*total de 5 números, sendo 2 após a vírgula*/
altura decimal(3,2), /*total de 3 números, sendo 2 após a vírgula*/
nacionalidade varchar(20) default 'Brasil', /*definindo padrão caso o campo não seja preenchido*/
primary key (id) /*definindo campo id como chave primária*/
) default charset = utf8;