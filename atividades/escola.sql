DROP DATABASE escola;
CREATE DATABASE escola;

USE escola;
create table alunos(
    id int NOT NULL AUTO_INCREMENT,
    nome varchar(70) NOT NULL,
    idade int,
    endereco varchar(100) NOT NULL,
    PRIMARY KEY (id)
);


SELECT * FROM alunos;