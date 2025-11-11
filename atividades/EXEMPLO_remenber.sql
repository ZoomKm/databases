
DROP database exemplo_senac;
CREATE database exemplo_senac;
USE exemplo_senac;

CREATE table usuario(
	id int not null auto_increment,
    nome varchar(70),
    PRIMARY KEY (id)
);


INSERT INTO usuario (nome) VALUES ('João');
INSERT INTO usuario (nome) VALUES ('Pedro');
INSERT INTO usuario (nome) VALUES ('Lucas');
INSERT INTO usuario (nome) VALUES ('Atos');
SELECT * FROM usuario;


UPDATE usuario SET nome = 'João da Silva' WHERE id = 1;
SELECT nome FROM usuario;

DELETE FROM usuario WHERE id = 1;
SELECT * FROM usuario;

