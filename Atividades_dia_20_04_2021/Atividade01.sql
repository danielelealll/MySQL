-- Criar um banco de dados
create database db_rhEmpresa;
-- acessa o banco de dados
use db_rhEmpresa;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
funcao varchar (255) not null,
salario decimal not null,
primary key(id)
);

-- inserindo dados sobre a tabela 

insert tb_funcionarios(nome,idade,funcao,salario) values (Daniele,23,"Desenvolvedora Jr.", 3.8000);
insert tb_funcionarios(nome,idade,funcao,salario) values (Carlos,55,"Gerente Regional", 30.8000);
insert tb_funcionarios(nome,idade,funcao,salario) values (Edvan,28,"Desenvolvedor Pleno", 5.8000);
insert tb_funcionarios(nome,idade,funcao,salario) values (Jessica,30,"Desenvolvedora Sênior", 8.8000);
insert tb_funcionarios(nome,idade,funcao,salario) values (Caio,38,"Gerente comercial.", 10.8000);


-- consultar funcionarios com salario maior que 2000

select * from tb_funcionarios where salario> 2000.00;

-- consultar funcionarios com salario maior que 2000

select * from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set nome = "Daniele Leal"  where id = 1;







