create database db_escola; 
use db_escola;

Create table tb_alunos(
id bigint (5) auto_increment,
nome varchar(10) not null,
escola varchar(25) not null,
ano varchar(20) not null,
materia varchar(15) not null,
idade int not null,
regiao varchar (20),
nota int (2),
primary key (id)
);

select * from tb_alunos;

drop table tb_alunos;



insert into tb_alunos(nome, escola, ano, materia, idade, regiao, nota) values 
("Paulo", "Silvio Xavier","Quarto Serie", "História",7, "Zona Sul",6), 
("Samuel", "Silvio Xavier","Primeiro Ano", "Inglês",14, "Zona Norte",9), 
("Douglas", "Silvio Xavier","Segundo Ano", "Educação Física",16, "Zona Leste",5), 
("Fernando", "Silvio Xavier","Quarto Serie", "Português",8, "Zona Norte",8), 
("Mari", "Silvio Xavier","Primeio Ano", "Inglês",7, "Zona Oeste",9), 
("Fabiola", "Silvio Xavier","Quinta Serie", "Ciencia",9, "Zona Norte",7), 
("Jessica", "Silvio Xavier","Sexta Serie", "Português",10, "Zona Sul",10), 
("Juh", "Silvio Xavier","Terceiro Ano", "Matematica",12, "Zona Norte",4);

update tb_alunos set nome="Mary" where id=5;
select * from tb_alunos where nota <= 7;
select * from tb_alunos where nota > 7;
select * from tb_alunos; 