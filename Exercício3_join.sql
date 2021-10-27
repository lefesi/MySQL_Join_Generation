
-- Autor: Letícia Ferreira da Silva
      -- Data: 26/10/2021 

-- Atividade 3

/*Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá ter
 o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.*/
create database db_farmacia_do_bem;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes 
do tb_categoria para se trabalhar com o serviço desta farmacia.*/
create table tb_categoria(
id bigint(40) auto_increment,
preço bigint(40) not null,
nome varchar(40) not null,
primary key (id)
);

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes
 dos tb_produto para se trabalhar com o serviço deste farmacia
 (não esqueça de criar a foreign key de tb_categoria nesta tabela).*/
 
 create table tb_produto(
 id_produto bigint(40) auto_increment,
 tipo varchar(40) not null,
 marca varchar(40) not null,
 bebês varchar(40) not null,
 fk_produto bigint(40) not null,
 primary key(id_produto),
  foreign key (fk_produto) references tb_categoria(id)
 );
 
 select*from tb_categoria;
 select*from tb_produto;
 
 
-- Popule esta tabela Categoria com até 5 dados.
select* from tb_categoria;
insert into tb_categoria( preço, nome)
values ( 30, "beleza"),
        ( 3, "remédio"),
        (20, "suplementos"),
        (10,  "balas"),
        (55, " objetos");
        

-- Popule esta tabela Produto com até 8 dados.
select* from tb_produto;
insert into tb_produto ( tipo, marca, bebês, fk_produto)
values ("dipirona", "dipirona", "dipironaBB", 2),
       ("shampoo", "dove", "diveBB", 1),
       ("creme de pele", "la roche", "johnson e johnson", 1),
       ("para cabelo", "cabelex", "cabelinho", 3),
       ("para o corpo", "corpex", "fotinho", 3),
       ("termometro", "termex", "termex", 5),
       ("medidor de preção", "medidex", "medidinho", 5),
       ("referscante", "halls", "não possui", 4);
       
       -- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
       select * from tb_categoria where preço > 50;
       
       -- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
         select * from tb_categoria where preço between 3 and 60;
         
		-- Faça um select  utilizando LIKE buscando os Produtos com a letra B.
        select * from tb_produto where tipo like "%b%";
        
        -- Faça um um select com Inner join entre  tabela categoria e produto.
        select * from tb_categoria inner join tb_produto
        on  tb_categoria.id = tb_produto.fk_produto;
        
        -- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
        select * from tb_categoria where nome like "%beleza%";
 
 
 
 
