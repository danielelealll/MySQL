-- Criar um banco de dados
create database db_ecommerce;
-- acessa o banco de dados
use db_ecommerce;

create table tb_produtosloja(
id bigint auto_increment,
produto varchar(255) not null,
valor decimal not null,
marca varchar (255) not null,
producao varchar(255) not null,
primary key(id)
);

-- inserindo dados sobre a tabela 

insert tb_produtosloja(produto,valor,marca,producao) values (Cerveja,2.80,Skol, "Produzida no Brasil");
insert tb_produtosloja(produto,valor,marca,producao) values (Refrigerante,7.60, Coca-Cola,"Produzido nos Estados Unidos");
insert tb_produtosloja(produto,valor,marca,producao) values (Whisky,2000.00, "Royal Salute", "Produzido no Canadá");
insert tb_produtosloja(produto,valor,marca,producao) values (Gin,130.00, Tanqueray,"Produzido no Brasil");
insert tb_produtosloja(produto,valor,marca,producao) values (Tequila,100.00,"Jose Cuervo", "Produzido no México");

-- estrutura de consulta de bebidas com valor maior que 500,00

select * from tb_produtosloja where valor> 500;

-- estrutura de consulta de bebidas com valor menor que 500,00

select * from tb_produtosloja where valor < 500;

update tb_produtosloja set valor = "5.00"  where id = 1;







