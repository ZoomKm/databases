
CREATE DATABASE estoque_sos;
USE estoque_sos;

--  (Gestão de Acessos)
CREATE TABLE USUARIO (
	id int(15) primary key auto_increment,
    usuario varchar(50),
    senha VARCHAR(255) NOT NULL,
    categoria ENUM('PARENT', 'CHILD') NOT NULL
);

-- (Gestão de Estoque)
CREATE TABLE PRODUTO (
    idEstoque VARCHAR(50) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    secao VARCHAR(50) NOT NULL,
    quantidade INT NOT NULL,
    tipoMedida VARCHAR(10),
    validade VARCHAR(10),
    dataEstocagem VARCHAR(10),
    observacoes TEXT
);

-- (Gestão de Dicas e Tutoriais)
CREATE TABLE TUTORIAL (
        idTutorial VARCHAR(50) PRIMARY KEY,
        titulo VARCHAR(255) NOT NULL,
        conteudo TEXT,
        categoria VARCHAR(50)
);

-- Inserção de dados para a tabela USUARIO

INSERT INTO USUARIO (usuario, senha, categoria) VALUES
('ParentMaster', md5('123456'), 'PARENT'),
('ChildUser', md5('123'), 'CHILD'),
('admin', md5('123'), 'PARENT');

-- Verificação:
SELECT * FROM USUARIO;

-- Inserção de dados para a tabela PRODUTO
INSERT INTO PRODUTO (idEstoque, nome, secao, quantidade, tipoMedida, validade, dataEstocagem, observacoes) VALUES
('001', 'Leite Longa Vida', 'ALIMENTOS', 12, 'Litros', '15/11/2025', '12/11/2024', 'Armazenar em local fresco.'),
('002', 'Detergente Limão', 'LIMPEZA', 5, 'Unidades', '31/12/2030', '01/08/2024', 'Não misturar com cloro.'),
('003', 'Pasta de Dentes', 'LIMPEZA', 2, 'Unidades', '10/01/2026', '01/10/2024', 'Para os dentes sensíveis.'),
('004', 'Maçã Fuji', 'ALIMENTOS', 10, 'Kg', '25/08/2025', '12/11/2024', 'Expirado (para teste de cor)'),
('005', 'Iogurte Natural', 'ALIMENTOS', 6, 'Unidades', '15/12/2025', '12/11/2024', 'Expira em menos de 30 dias (VERMELHO)'),
('006', 'Farinha de Trigo', 'ALIMENTOS', 3, 'Kg', '12/03/2026', '12/11/2024', 'Expira em menos de 90 dias (AMARELO)');

-- Verificação:
SELECT * FROM PRODUTO;


-- Inserção de dados para a tabela TUTORIAL
INSERT INTO TUTORIAL (idTutorial, titulo, conteudo, categoria) VALUES
('001', 'Como Organizar a Despensa', 'Use cestos e separe por tipo de alimento...', 'ALIMENTOS'),
('002', 'Rotina Semanal de Limpeza', 'Comece pela cozinha e termine nos quartos...', 'LIMPEZA'),
('03', 'Primeiros Socorros Básicos', 'Mantenha um kit de primeiros socorros acessível...', 'PRIMEIROS_SOCORROS');

-- Verificação:
SELECT * FROM TUTORIAL;

