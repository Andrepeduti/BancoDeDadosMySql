create database db_rh; 
use db_rh;

Create table tb_funcionarios(
id bigint (5) auto_increment,
nome varchar(25) not null,
idade int(2) not null,
sexo varchar(10) not null,
cargo varchar (25) not null,
salario double not null,
primary key (id)
);



drop table tb_funcionarios;



insert into tb_funcionarios(nome, idade, sexo, cargo, salario) values 
("André", 45, "Masculino", "Dev Junior", 4000),
("Mary", 18, "Feminino", "Garota Propaganda", 2000),
("Samuel", 45, "Masculino", "Atendente", 2000),
("João", 45, "Masculino", "Suporte", 2500),
("Priscila", 45, "Feminino", "Fincanceiro", 3000),
("Jessica", 20, "Feminino", "Auxiliar", 3000);

update tb_funcionarios set nome="Pricila", idade = 40 where id=5;
select * from tb_funcionarios where salario <= 2000;
select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios;
