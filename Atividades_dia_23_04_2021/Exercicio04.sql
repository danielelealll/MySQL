-- Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o seguinte nome db_cidade_das_carnes, onde o sistema trabalhará com as informações dos produtos desta empresa.

create database db_cidade_das_carnes;

use db_cidade_das_carnes;

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desse açougue.

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Aves",true);
insert tb_categoria (descricao, ativo) values ("Suíno",true);
insert tb_categoria (descricao, ativo) values ("Bovino",true);
insert tb_categoria (descricao, ativo) values ("feijoada",true);
insert tb_categoria (descricao, ativo) values ("enlatados",true);

-- Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não esqueça de criar a foreign key de tb_categoria nesta tabela).
create table tb_produto(
id bigInt auto_Increment, 
nome varchar(200) not null, 
preco decimal (12,3) not null,
quantiproduto varchar (100) not null, 
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

-- Popule esta tabela Produto com até 8 dados.
insert tb_produto (nome, preco, quantiproduto, categoria_id) values ("Coxinha de frango ",20.00,5,1);
insert tb_produto (nome, preco, quantiproduto, categoria_id) values ("Picanha",65.00,20,3);
insert tb_produto (nome, preco, quantiproduto, categoria_id) values ("Filé de Frango",21.00,30,1);
insert tb_produto (nome, preco, quantiproduto, categoria_id) values ("Bacon",20.00,8,2);
insert tb_produto (nome, preco, quantiproduto, categoria_id) values ("hamburguer",18.00,12,3);
insert tb_produto (nome, preco, quantiproduto, categoria_id) values ("Patinho",50.00,1,3);
insert tb_produto (nome, preco, quantiproduto, categoria_id) values ("Salsicha enlatada",20.00,20,5);
insert tb_produto (nome, preco, quantiproduto, categoria_id) values ("Lingua de boi",20.00,2,4);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco >=3 and preco <=60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where nome like "%C%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select nome,  preco, quantiproduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria from tb_produto inner join tb_categoria on  tb_categoria.id = tb_produto.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são suínos).
select nome, preco, quantiproduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria from tb_produto inner join tb_categoria on  tb_categoria.id = tb_produto.categoria_id where tb_categoria.descricao = "Suíno";



