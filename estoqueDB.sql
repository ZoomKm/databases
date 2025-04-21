CREATE DATABASE	estoque;
USE estoque;

CREATE TABLE `usuario` (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    tipo CHAR(6),
	nome VARCHAR(40),
	login VARCHAR(20),
	senha VARCHAR(20),
    CONSTRAINT tipo_usuario CHECK (tipo IN ('Parent', 'Child'))
);

CREATE TABLE `alimento_graos` (
	idAlimento INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(40) NOT NULL,
	quantidade FLOAT,
	dataValidade DATE,
	dataEstoque DATE,
	observacoes VARCHAR(200),
    status CHAR(8),
    CONSTRAINT status_valido CHECK (status IN ('Ativo', 'Excluido'))
);

INSERT INTO alimento_graos (nome, quantidade, 
dataValidade, dataEstoque, observacoes, status) 
VALUES ("arroz", 4.5, "2026-10-04", "2025-04-20", "recipiente padrão", "Ativo");
DELETE FROM estoque.alimento_graos WHERE (idAlimento = '2');
select * from alimento_graos;