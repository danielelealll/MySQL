-- Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as informações dos produtos desta empresa.

create database db_farmacia_do_bem;
use db_farmacia_do_bem;

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255) not null,
tipo varchar (250) not null,
ativo boolean not null,
primary key (id)
);

-- Popule esta tabela Categoria com até 5 dados.

insert tb_categoria(descricao,tipo,ativo) values ("bebidas", "refrigerantes",true);
insert tb_categoria(descricao, tipo,ativo) values ("protetor solar","saúde da pele",true);
insert tb_categoria(descricao,tipo,ativo) values ("antibióticos","Inflamações diversas", true);
insert tb_categoria(descricao,tipo,ativo)values ("remédios tarjados","pescrição psiquiátrica",true);
insert tb_categoria(descricao,tipo,ativo) values ("vitaminas","Suplementares", true);

-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não esqueça de criar a foreign key de tb_categoria nesta tabela).

create table tb_produtos(
id bigint (8) auto_increment,
nome varchar(280) not null,
valor decimal not null,
quantProduto decimal not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

-- Popule esta tabela Produto com até 8 dados.

insert tb_produtos (nome, valor, quantProduto, categoria_id) values ("Nívea Protetor Solar",85.00,2,2);
insert tb_produtos (nome, valor, quantProduto, categoria_id) values ("Coca Cola",6.00,1,1);
insert tb_produtos (nome, valor, quantProduto, categoria_id) values ("Amoxilina",60.00,30,3);
insert tb_produtos (nome, valor, quantProduto, categoria_id) values ("Alprazolam",30.00,30,4);
insert tb_produtos (nome, valor, quantProduto, categoria_id) values ("Calcitran b-12",60.00,30,5);
insert tb_produtos (nome, valor, quantProduto, categoria_id) values ("Sundown Protetor Solar",50.00,1,2);
insert tb_produtos (nome, valor, quantProduto, categoria_id) values ("Pepsi",3.50,1,1);
insert tb_produtos (nome, valor, quantProduto, categoria_id) values ("Nimesulida",20.00,30,3);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.

select * from tb_produtos where valor > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

select * from tb_produtos where valor >=3 and valor <=60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produtos where nome like  "%b%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select nome, valor, quantProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;

 -- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são bebidas)
 
 select nome, valor, quantProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.descricao as estado_da_categoria from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id where tb_categoria.descricao = "bebidas";



