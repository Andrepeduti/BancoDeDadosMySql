create database db_generation_game_online;
use db_generation_game_online;

CREATE TABLE tb_personagem (
    id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    rota VARCHAR(15) NOT NULL,
    build ENUM('AP', 'AD', 'TANK') NOT NULL,
    poderDeAtaque DOUBLE NOT NULL,
    poderDeDefesa DOUBLE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_classe (
    id BIGINT(5) AUTO_INCREMENT,
    funcao VARCHAR(10) NOT NULL,
    caracteristica VARCHAR(25) NOT NULL
);

insert into tb_personagem (nome, rota, build, poderDeAtaque, poderDeDefesa) values 
("Lucian", "BOT", 'AD', 2500, 500),
("Camile", "TOP", 'AD', 1500, 2000),
("Lissandra", "MID", 'AP', 600, 400),
("Master Yi", "Jungles", 'AD', 3000, 400),
("Cassiopeia", "MID", 'AP', 600, 1500),
("Rammus", "Jungles", 'TANK', 500, 8000),
("MUNDO", "TOP", 'TANK', 500, 5000),
("LEONA", "SUPORT", 'TANK', 500, 4000);

select * from tb_personagem where poderDeAtaque > 2000 ;
select * from tb_personagem where poderDeDefesa > 1000 AND poderDeDefesa <= 2000;

select * from tb_personagem where nome like 'C%';

select * from tb_personagem; 

drop table tb_personagem; 
