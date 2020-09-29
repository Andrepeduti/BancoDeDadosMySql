create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria (
id_categ int AUTO_INCREMENT,
tipo varchar(225),

primary key(id_categ)
);

create table tb_produto (
id_prod bigint not null AUTO_INCREMENT,
nome_prod varchar (25) ,
preco_prod double (5,2) not null,
pesoEmGramas double not null,
id_categ_ int,
primary key (id_prod),
constraint fk_categoria foreign key (id_categ_) references tb_categoria(id_categ)
);

INSERT INTO tb_categoria(tipo) VALUES 
('Frango'),
('Boi'),
('Porco'),
('OUTROS');

INSERT INTO tb_produto(nome_prod,preco_prod,pesoEmGramas,id_categ_) VALUES
('Picanha', 120.00, 200, 2),
('Coxa de Frango', 20.00,100,1),
('Coração', 30.00,100,1),
('Alcatra', 40.00,1000,2),
('Asa de Frango', 30.00,400,1),
('Linguiça',20.00,200,3),
('Bacon', 50.00,200, 3),
('Sal grosso',2.00,500,4);

select * from tb_produto;
select * from tb_produto where preco_prod > 50;
select * from tb_produto where preco_prod > 3 and preco_prod < 60;
select * from tb_produto where nome_prod like 'c%';
select * from tb_produto inner join tb_categoria ON tb_produto.id_categ_ = tb_categoria.id_categ;

select * from tb_produto
INNER JOIN tb_categoria ON tb_produto.id_categ_ = tb_categoria.id_categ
where id_categ_ = 3;





drop database db_cidade_das_carnes; 