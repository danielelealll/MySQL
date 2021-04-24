-- Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as informações dos produtos desta empresa.
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.

create table tb_categoria(
id bigint(10) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

-- Popule esta tabela Categoria com até 5 dados.
insert tb_categoria (descricao, ativo) values ("Python",true);
insert tb_categoria (descricao, ativo) values ("MySQL",true);
insert tb_categoria (descricao, ativo) values ("Java",true);
insert tb_categoria (descricao, ativo) values ("C#",true);
insert tb_categoria (descricao, ativo) values ("Excel",true);

-- Crie uma tabela de tb_curso e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_curso para se trabalhar com o serviço de um site de cursos onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).
create table tb_curso (
id bigint(5) auto_increment,
nome varchar (255) not null,
valor decimal not null,
descricao varchar (1000) not null,
periodo varchar (200) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

-- Popule esta tabela Produto com até 8 dados.
insert tb_curso (nome,valor, descricao,periodo, categoria_id) values ("Python - Inciantes",350.00,"Curso que busca formar conhecimentos básicos e introdutório de Python","dois meses",1);
insert tb_curso (nome,valor, descricao,periodo, categoria_id) values ("MySQL - Avançado",590.90,"MySQL avançado para quem buscs se especializar","dois meses",2);
insert tb_curso (nome,valor, descricao,periodo, categoria_id) values ("Java - Intermediário",690.00,"Java Intermediário para quem busca intermediar e complementar seus conhecimentos","quatro meses",3);
insert tb_curso (nome,valor, descricao,periodo,categoria_id) values ("C# - iniciantes ",59.90,"Curso promocional para quem deseja introduzir o C# em seus conhecimentos","duas semanas",4);
insert tb_curso (nome,valor, descricao,periodo, categoria_id) values ("Excel - Básico",190.90,"Conhecimento e introdução a ferramenta do Microsoft Office essencial ao mercado","duas semanas",5);
insert tb_curso (nome,valor, descricao,periodo, categoria_id) values ("Java - Básico",180.90,"Java Intermediário para quem busca intermediar e complementar seus conhecimentos","sete semanas",3);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_curso where valor > 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais
select * from tb_curso where valor >=3 and valor <=60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra J.
select * from tb_curso where nome like "%J%";

-- Faça um um select com Inner join entre  tabela categoria e produto.

select nome,valor, periodo as Período, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria from tb_curso inner join tb_categoria on  tb_categoria.id = tb_curso.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).
select nome, valor, periodo as Período, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria from tb_curso inner join tb_categoria on  tb_categoria.id = tb_curso.categoria_id where tb_categoria.descricao = "Java";


