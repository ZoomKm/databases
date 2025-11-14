create database DAO_senac;

use DAO_senac;
create table funcionarios(
    matricula varchar(70) NOT NULL,
    nome varchar(70) NOT NULL,
    cargo varchar(70) NOT NULL,
    salario double NOT NULL,
    PRIMARY KEY (matricula)
);


select * from funcinarios;
