-- Autor: Letícia Ferreira da Silva
      -- Data: 26/10/2021 
      
                -- Atividade 2   
      
/*Crie um banco de dados para um serviço de pizzaria de uma empresa, 
o nome do banco deverá ter o seguinte nome db_pizzaria_legal, 
onde o sistema trabalhará com as informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.*/ 

create database db_pizzaria_legal;-- crianda a database da pizzaria

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 
atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.*/
 create table tb_categoria( 
 id_categoria bigint(20) auto_increment,
 tamanho varchar(10) not null, 
 preço bigint(20) not null,
 primary key (id_categoria )
 );

/*Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
 relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de criar a 
 foreign key de tb_categoria nesta tabela).*/
 
 create table tb_pizza(
id_pizza bigint(20)auto_increment,
 salgado_sabor varchar(40) not null,
 borda varchar (40) not null,
 tops varchar(40) not null,
 doce_sabor varchar(40) not null,
  fk_pizza bigint(20),
 primary key(id_pizza),
 foreign key (fk_pizza) references tb_categoria(id_categoria)
 );
 
 -- Popule esta tabela Categoria com até 5 dados.
 select* from tb_categoria;
 insert into tb_categoria (tamanho, preço)
 values (" PP" , 30),
		(" P" , 40),
		(" M" , 50),
        (" G" , 60),
		(" GG" , 70);
 
 -- Popule esta tabela pizza com até 8 dados.
  select* from tb_pizza;
 insert into tb_pizza (salgado_sabor, borda, tops, doce_sabor, fk_pizza)
 values (" queijo" , "catupiry","tomate", "chocolate", 5 ),
		(" portuguesa" , "queijo","tomate", "torta de maça",3),
		(" frango" , "cheddar","bacon", "torta de morango", 2),
        (" frango c/ catupiry" , "queijo", "bacon", "bejinho",1),
		(" calbresa" , "catupiry", "brócolis", "Brigadeiro",4);
        
        -- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
        select*from tb_categoria where preço > 45;
        
        -- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
        select*from tb_categoria where preço between 29 and 60;
        
        -- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
        select* from tb_pizza where salgado_sabor like "%c%";
        
        -- Faça um um select com Inner join entre  tabela categoria e pizza.
        select* from tb_categoria inner join tb_pizza
        on tb_categoria.id_categoria = tb_pizza.fk_pizza;
        
        -- Faça um select onde traga todos os Produtos de uma categoria específica 
        -- (exemplo todos os produtos que são pizza doce).
          select tb_categoria.tamanho,  tb_pizza.salgado_sabor 
       from tb_categoria inner join tb_pizza
          on tb_categoria.id_categoria = tb_pizza.fk_pizza; 
       
 
 

