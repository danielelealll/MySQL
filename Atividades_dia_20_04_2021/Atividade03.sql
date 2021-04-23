-- Criar um banco de dados
create database db_escola;
-- acessa o banco de dados
use db_escola;

create table tb_aluno(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
serie varchar (255) not null,
media decimal not null,
primary key(id)
);

-- inserindo dados sobre a tabela 

insert tb_aluno(nome,idade,serie,media) values (Daniele,17,"Terceiro ano", 10.0);
insert tb_aluno(nome,idade,serie,media) values (Carolina,18,"Terceiro ano", 5.0);
insert tb_aluno(nome,idade,serie,media) values (Caio,15,"Terceiro ano", 9.9);
insert tb_aluno(nome,idade,serie,media) values (Jose,17,"Terceiro ano", 5.0);
insert tb_aluno(nome,idade,serie,media) values (Camilla,18,"Terceiro ano", 8.0);

-- estrutura de consulta de media maior que 7

select * from tb_aluno where media> 7;

-- estrutura de consulta de media menor que 7

select * from tb_aluno where media < 7;

update tb_aluno set media = "5.00"  where id = 3;







