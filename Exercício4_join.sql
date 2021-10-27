-- Autor: Letícia Ferreira da Silva
      -- Data: 26/10/2021 

-- Atividade 4

/*Crie um banco de dados para um serviço de um açougue ou uma quitanda, 
o nome do banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, 
onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.*/

create database db_cidade_das_frutas;
 
/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes 
do tb_categoria para se trabalhar com o serviço desse açougue*/
create table tb_categoria(
id bigint(40) auto_increment,
frutas varchar(40) not null,
verduras varchar(40) not null,
primary key (id)
);

/*Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes 
dos tb_produto para se trabalhar com o serviço desse açougue
(não esqueça de criar a foreign key de tb_categoria nesta tabela).*/
create table tb_produtos(
id_produto bigint(40) auto_increment,
preço bigint(40) not null,
cor varchar(40) not null,
promoção boolean,
fk_produto bigint(40) not null,
primary key (id_produto),
foreign key(fk_produto) references tb_categoria(id)
); 


-- Popule esta tabela Categoria com até 5 dados.
select * from tb_categoria;
insert into tb_categoria ( frutas, verduras)
values ("maça", "tomate"),
	   ("morango", "beterraba"),
       ("uva", "alface"),
       ("laranja", "pimentão amarelo"),
       ("banana", "batata");
	
-- Popule esta tabela Produto com até 8 dados.
select * from tb_produtos;
insert into tb_produtos ( preço, cor, promoção, fk_produto)
values (5, "amarelo", true, 5),
	   (8, "vermelho", true, 2),
	   (10, "vermelho", false, 1),
       (9, "verde", false, 3),
	   (2, "laranja", true, 4);
-- Faça um select que retorne os Produtos com o valor maior do que 5 reais.
select * from tb_produtos where preço > 5;
-- Faça um select trazendo  os Produtos com valor entre 3 e 10 reais.
select * from tb_produtos where preço between 3 and 10;
-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_categoria where frutas like "%c%";
-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_categoria inner join tb_produtos
on   tb_categoria.id = tb_produtos.fk_produto;

/*Faça um select onde traga todos os Produtos de uma categoria específica 
(exemplo todos os produtos que são aves ou legumes)*/
 select * from tb_categoria where verduras like "%b%";




 

