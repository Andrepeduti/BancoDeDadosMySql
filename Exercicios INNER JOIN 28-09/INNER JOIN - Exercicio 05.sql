create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria (
id_categ int AUTO_INCREMENT,
marca varchar(225),

primary key(id_categ)
);

create table tb_produto (
id_prod bigint not null AUTO_INCREMENT,
nome_prod varchar (25) ,
preco_prod double (5,2) not null,
modelo varchar (25)not null,
id_categ_ int,
primary key (id_prod),
constraint fk_categoria foreign key (id_categ_) references tb_categoria(id_categ)
);

INSERT INTO tb_categoria(marca) VALUES 
('Nike'),
('Adidas'),
('Puma'),
('Fila');

INSERT INTO tb_produto(nome_prod,preco_prod,modelo,id_categ_) VALUES
('Tênis', 300.00, 'Air Max', 1),
('Corta vento', 100.00,'Jacuze',2),
('Tênis', 200,'Puma a Disco',3),
('Bola', 80.00,'Socity',2),
('Calça', 150.00,'Esportiva',4),
('Tênis',500,'Disruptor',4),
('Camisa', 50.00,'Just do it', 1),
('Meia',10.00,'Cano alto',4);

select * from tb_produto;
select * from tb_produto where preco_prod > 50;
select * from tb_produto where preco_prod > 3 and preco_prod < 60;
select * from tb_produto where nome_prod like 'c%';
select * from tb_produto inner join tb_categoria ON tb_produto.id_categ_ = tb_categoria.id_categ;

select * from tb_produto
INNER JOIN tb_categoria ON tb_produto.id_categ_ = tb_categoria.id_categ
where id_categ_ = 3;
