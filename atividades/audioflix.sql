create database audioflix;


use audioflix;
create table podcast (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    produtor varchar(70) NOT NULL,
	nomeepisodio varchar(70) NOT NULL,
	numeroepisodio int(10) NOT NULL,
	duracao time NOT NULL,
	url VARCHAR(100)
);


CREATE TABLE usuario (
	id int PRIMARY KEY AUTO_INCREMENT,
	nome varchar(30),
	login varchar(100),
	senha text,
	tipo varchar(30)
);


-- Dados exemplos TABELA usuario
INSERT INTO usuario (nome, login, senha, tipo) VALUES 
('Admin', 'admin@mail.com', md5('123'), 'Admin'),
('Operador', 'operador@mail.com', md5('123'), 'Operador'),
('Usuario', 'usuario@mail.com', md5('123'), 'Usuario');                                

-- Dados exemplos TABELA podcast
INSERT INTO podcast (produtor, nomeepisodio, numeroepisodio, duracao, url) VALUES 
('TechFlow', 'O Futuro da IA em 2030', 45, '00:45:00', 'http://repo.cenaflix.com/ai-2030'),
('MundoSemFronteiras', 'Trilha na Patagônia Chilena', 12, '01:15:30', 'http://repo.cenaflix.com/patagonia-chile'),
('Chef em Casa', 'Segredos do Risotagem Perfeito', 88, '00:35:10', 'http://repo.cenaflix.com/risoto-segredos'),
('Cosmos Digital', 'A Busca por Vida Extraterrestre', 7, '00:55:00', 'http://repo.cenaflix.com/vida-extraterrestre'),
('Grana Inteligente', 'Como Sair das Dívidas em 6 Meses', 21, '00:40:45', 'http://repo.cenaflix.com/sair-dividas'),
('Mente Aberta', 'O Poder do Hábito Matinal', 101, '00:25:00', 'http://repo.cenaflix.com/habito-matinal'),
('Linha do Tempo', 'A Queda do Império Romano', 33, '01:05:20', 'http://repo.cenaflix.com/imperio-romano'),
('Gamer Zone', 'Análise: Elden Ring e o Mundo Aberto', 60, '01:30:00', 'http://repo.cenaflix.com/elden-ring-review'),
('Vida Leve', 'Os Benefícios do Sono Profundo', 18, '00:32:40', 'http://repo.cenaflix.com/sono-profundo'),
('Ritmos Urbanos', 'A Evolução do Hip Hop nos Anos 90', 52, '00:50:50', 'http://repo.cenaflix.com/hip-hop-90s'),
('Ideia Milionária', 'A Arte de Fazer um Pitch Perfeito', 74, '00:28:15', 'http://repo.cenaflix.com/pitch-perfeito'),
('O Sentido da Vida', 'Introdução ao Estoicismo', 9, '01:00:00', 'http://repo.cenaflix.com/estoicismo-intro'),
('Trend Alert', 'Cores da Estação Primavera/Verão', 14, '00:20:00', 'http://repo.cenaflix.com/cores-verao'),
('Código Aberto', 'Comparando Java e Python no Backend', 112, '00:48:30', 'http://repo.cenaflix.com/java-vs-python'),
('Diário Global', 'As Eleições na Europa', 205, '00:59:10', 'http://repo.cenaflix.com/eleicoes-europa'),
('Tela Quente', 'O Legado de Christopher Nolan', 67, '01:20:00', 'http://repo.cenaflix.com/nolan-legado'),
('Reino Animal', 'Os Grandes Felinos da Savana', 4, '00:38:05', 'http://repo.cenaflix.com/felinos-savana'),
('Venda Mais', 'Otimização de SEO para Iniciantes', 92, '00:30:00', 'http://repo.cenaflix.com/seo-iniciantes'),
('Fala Aí', 'As Gírias Mais Usadas em Inglês', 1, '00:22:18', 'http://repo.cenaflix.com/ingles-girias'),
('Página Virada', 'Clássicos da Literatura Brasileira', 16, '01:10:45', 'http://repo.cenaflix.com/lit-brasileira');

select * from usuario;
select * from podcast;