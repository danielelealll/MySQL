-- Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com asinformações dos produtos desta empresa.

create database db_pizzaria_legal;
use db_pizzaria_legal;
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(220) not null,
    tamanho varchar (110) not null,
    adicionalqueijo boolean,
    primary key (id)
);

-- Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de criar a foreign key de tb_categoria nesta tabela).

create table tb_pizza(
	id bigint auto_increment,
    sabor varchar(220) not null,
    borda varchar(150) not null,
    preco decimal (10,2) not null,
    removerIngrediente varchar (200) not null,
    categoria_id bigInt,
    primary key (id),
    foreign key(categoria_id) references tb_categoria(id)
);
    
-- Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria(tipo, tamanho, adicionalqueijo) values ("Salgada","Grande",true);
insert into tb_categoria(tipo, tamanho, adicionalqueijo) values ("Salgada","Média",false); 
insert into tb_categoria(tipo, tamanho, adicionalqueijo) values ("Doce","Pequena",false); 
insert into tb_categoria(tipo, tamanho, adicionalqueijo) values ("Salgada","Pequena",false);
insert into tb_categoria(tipo, tamanho, adicionalqueijo) values ("Salgada","Pequena",true);
    
-- Popule esta tabela pizza com até 8 dados.
insert into tb_pizza (sabor,borda, preco,removerIngrediente,categoria_id) values ("Escarola","Borda recheada de Cheddar",39.90,"Remover cebola e azeitona",1);
insert into tb_pizza (sabor,borda, preco,removerIngrediente,categoria_id) values ("Quatro queijos","Borda recheada de queijo",58.90,"Remover cebola",5);
insert into tb_pizza (sabor,borda, preco,removerIngrediente,categoria_id) values ("Chocolate","Sem borda recheada",48.90,"Nutella da Borda",3);
insert into tb_pizza (sabor,borda, preco,removerIngrediente,categoria_id) values ("Calabresa","Borda recheada de Cheddar",29.90,"Remover cebola da calabresa",2);


-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
select * from tb_pizza where preco > 45.00;

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
select * from tb_pizza where preco between 29.00 and 60.00;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_pizza where sabor like "c%";

-- Faça um um select com Inner join entre tabela categoria e pizza.
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
select tipo, tamanho, adicionalqueijo, tb_pizza.sabor, tb_pizza.preco, tb_pizza.removerIngrediente
from tb_categoria
left join tb_pizza on tb_categoria.id = tb_pizza.categoria_id
where tb_categoria.tipo = "Doce";

