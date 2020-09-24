create database db_ecommerce; 
use db_ecommerce;

Create table tb_produtos(
id bigint (5) auto_increment,
nome varchar(25) not null,
marca varchar(10) not null,
modelo varchar(10),
preco double not null,
tamanho int,
funcionabilidade varchar (20),
prazoEnvio int (2),
primary key (id)
);

select * from tb_produtos;

drop table tb_produtos;



insert into tb_produtos(nome, marca, modelo, preco, tamanho, funcionabilidade, prazoEnvio) values 
("Tenis", "Nike", "AirMax",433,42,"Calçar os Pés",3),
("Bola", "Adidas", "Socity",80,"","Calçar os Pés",3),
("Lampada", "Philips ", "9w",70,"","Calçar os Pés",3),
("Televisão", "Samsung", "m2dr3",32.5,42,"Calçar os Pés",3),
("Garrafa", "Bonafonte", "Pet",5,"","Calçar os Pés",3),
("Notebook", "Asus", "m23",3500,8,"Calçar os Pés",3),
("Celular", "Iphone", "11plus",6000,6,"Calçar os Pés",3),
("Relogio", "Cassio", "slim",120,"","Calçar os Pés",3);

update tb_produtos set modelo="Campo" where id=2;
select * from tb_produtos where preco <= 500;
select * from tb_produtos where preco > 500;
select * from tb_produtos; 
