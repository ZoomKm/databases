USE estoque_sos;


INSERT INTO `usuario` (tipoUsuario, nome, email, senha) VALUES
('P', 'Luis Henrique', 'luishlr@outlook.com', 'qwert54321'),
('C', 'Winter Snow', 'winter.snow@live.com', '1qazxsw2'),
('C', 'Summer Hail', 'summer.hail@live.com', ',ku76yjm'),
('C', 'Autumn Winds', 'autumn.widns@live.com', '9oç;.li8'),
('P', 'Skyscraper', 'sky.scraper@live.com', '3edcvfr4');


INSERT INTO `secaoproduto` (nomeSecaoProduto, obsSecaoProduto) VALUES 
('Alimento', 'Gerenciar o estoque de alimentos (Grãos, Enlatados, Embalados, Líquidos e Outros)'),
('Limpeza', 'Gerenciar o estoque de produtos de limpeza (Pessoal, Sólidos, Líquidos e Outros)'),
('Primeiros socorros', 'Gerenciar o estoque de produtos de primeiros socorros e outros remédios (Curativos, Analgésicos, Pomadas, Uso contínuo e Outros) '),
('BOB', 'Gerenciar o os itens armazenados em Bug Out Bag’s (Comida, Ferramentas, Abrigo, Primeiros socorros e Outros)');


INSERT INTO `subsecao` (secaoProduto_idSecaoProduto, nomeSubSecao, obsSubSecao) VALUES
('1', 'Básicos', 'Alimentos estocados em embalagens padrão grande de 4,5L'),
('1', 'Enlatados', 'Produtos enlatados em suas embalagens originais'),
('1', 'Embalados', 'Produtos embalados em suas embalagens originais'),
('1', 'Outros', 'Outros produtos em embalagens originais'),
('2', 'Pessoal', 'Produtos de limpeza pessoal'),
('2', 'Sólidos', 'Produtos sólidos para limpeza residencial'),
('2', 'Líquidos', 'Produtos líquidos para limpeza residencial'),
('2', 'Outros', 'Outos produtos para limpeza residencial'),
('3', 'Curativos', 'Produtos para realização de curativos'),
('3', 'Analgésicos', 'Produtos para aliviar ou reduzir a dor.'),
('3', 'Pomadas', 'Produtos para aplicação diretamente na pele.'),
('3', 'Uso contínuo', 'Produtos e remédios de uso contínuo.'),
('3', 'Outros', 'Outros produtos e remédios.'),
('4', 'Comida', 'Alimentos para 72 horas.'),
('4', 'Ferramentas', 'Ferramentas para tarefas simples.'),
('4', 'Abrigo', 'Itens que proporcionam um abrigo temporário.'),
('4', 'Primeiros socorros', 'Produtos para emergências simples.'),
('4', 'Outros', 'Outos produtos esssencias numa BOB');


INSERT INTO `produto` (subSecao_idSubSecao, nomeProduto, tipoMedida, obsProduto) VALUES
('1', 'Arroz', 'peso', 'Expor durante 3 horas ao sol antes de estocar.'),
('1', 'Feijão', 'peso', 'Estocar por no máximo 4 meses.'), ('1', 'Grão de Bico', 'peso', NULL), 
('1', 'Lentilha', 'peso', NULL), ('1', 'Aveia', 'peso', NULL), ('1', 'Farinha de Trigo', 'peso', NULL),
('1', 'Flocão', 'peso', NULL), ('1', 'Macarrão', 'peso', NULL), ('2', 'Milho verde', 'unidade', NULL), 
('2', 'Sardinha', 'unidade', NULL), ('2', 'Salmão', 'unidade', NULL), ('2', 'Ervilha', 'unidade', NULL),
('3', 'Água mineral', 'unidade', NULL), ('3', 'Óleo de Soja', 'unidade', NULL), 
('4', 'Chimichuri', 'unidade', 'Embalagem padrão pequena de 500mL'), 
('4', 'Açúcar', 'peso', 'Embalagens padrão grande de 4,5L'), ('4', 'Tereré', 'peso', 'Embalagem original'),
('4', 'Café', 'peso', 'Embalagem original'), ('4', 'Sal', 'peso', 'Embalagem original'),
('5', 'Sabonete', 'unidade', NULL), ('5', 'Creme dental', 'unidade', NULL), ('5', 'Desodorante', 'unidade', NULL),
('5', 'Shampoo', 'unidade', NULL), ('5', 'Condicionador', 'unidade', NULL), ('6', 'Sabão de barra', 'unidade', NULL),
('6', 'Sabão em pó', 'peso', NULL), ('6', 'Esponja', 'unidade', NULL), ('7', 'Desinfetante', 'volume', NULL),
('7', 'Água sanitária', 'volume', NULL), ('7', 'Desengordurante', 'volume', NULL), ('7', 'Detergente', 'volume', NULL),
('8', 'Bicarbonato de sódio', 'peso', NULL), ('8', 'Esponja de aço', 'unidade', NULL), 
('8', 'Esponja de aço', 'unidade', NULL), ('9', 'Band-Aid', 'unidade', NULL), ('9', 'Gaze', 'unidade', NULL),  
('9', 'Esparadrapo', 'unidade', NULL), ('10', 'Paracetamol', 'unidade', NULL), ('10', 'Doralgina', 'unidade', NULL),
('11', 'Dexpantenol', 'unidade', NULL), ('11', 'Calamina', 'unidade', NULL), ('12', 'Naprix', 'unidade', NULL),
('13', 'Albendazol', 'unidade', NULL), ('13', 'Colírio', 'unidade', NULL), ('13', 'Natu Bronc', 'unidade', NULL), 
('13', 'Aguardente', 'unidade', NULL), ('14', 'Arroz', 'peso', NULL), ('14', 'Sardinha', 'unidade', NULL), 
('14', 'Lentilha', 'peso', NULL), ('14', 'Milho verde', 'unidade', NULL),
('15', 'Fogareiro', 'unidade', NULL), ('15', 'Serra dobrável', 'unidade', NULL), ('15', 'Canivete', 'unidade', NULL), 
('15', 'Garfo e colher', 'unidade', NULL), ('15', 'Panela pequena', 'unidade', NULL), ('15', 'Copo', 'unidade', NULL), 
('16', 'Roupa', 'unidade', NULL), ('16', 'Corda 25m', 'unidade', NULL), ('17', 'Doralgina', 'unidade', NULL),
('18', 'Creme dental', 'peso', NULL), ('18', 'Escova', 'unidade', NULL),  ('18', 'Papel higiênico', 'unidade', NULL);

INSERT INTO `secaodica` (nomeSecaoDica, obsSecaoDica) VALUES
('Estocagem', 'Dicas sobre como armazenar alimentos e quais os principais alimentos a serem armazenados'),
('Primeiros socorros', 'Dicas sobre primeiros socorros básicos'), ('Outras', 'Outros assuntos variados.');

INSERT INTO `dica` (secaoDica_idSecaoDica, tituloDica, descricao, dataCriacao) VALUES
('1', 'Por que estocar comida?', 
'1. Não ter um estoque de comida e água pode tornar até um desastre de pequenas proporções (como uma tempestade ou falta de energia) 
em uma situação potencialmente ameaçadora à vida. Ter comida guardada pode te ajudar a controlar a situação no conforto e proteção de sua casa.
Pessoas agem de maneira estúpida durante desastres e o último lugar que você quer estar é no meio do mercado lutando pela última garrafa de água.
2. Em uma situação de desastre (dependendo de sua natureza) haverão momentos onde será impossível obter comida. 
Isso pode acontecer por inúmeras razões como doenças, clima adverso ou a necessidade de se esconder por um tempo. 
Ter um estoque de comida nesse tipo de situação pode assegurar sua sobrevivência nos momentos mais baixos.
3.  Estocar comida para desafios econômicos. Ter comida guardada não é útil apenas para se preparar contra grandes desastres. 
É também uma ótima forma de superar os tempos difíceis que a vida pode jogar em você. Desde perder o trabalho até outros 
problemas financeiros que podem aparecer, ter um bom suprimento de comida vai ajudá-lo a sair-se bem em uma situação ruim.','2025-04-24'),
('1', 'Como estocar grãos?', 
'Primeiro passo: Higienização; Segundo passo: Inserção do alho e grãos; Terceiro passo: Compactação de grãos','2025-04-25'),
('1','Quais os principais alimentos?', ''
,'2025-02-08'),
('2', 'Como fazer um curativo?', 
'','2025-03-04'),
('2', 'Como desengasgar outra pessoa?',
 '','2025-03-07'),
('3', 'Como fazer uma fogueira?', 
'','2025-03-10'),
('3', 'Como se orientar pelas estrelas?',
 '','2025-03-10'),
('3', 'Como usar uma bússola?', 
'','2025-03-12'),
('3', 'Como fazer uma abrigo?', 
'','2025-03-12');

SELECT * FROM `estoque`;
INSERT INTO `estoque` (produto_idProduto, peso, volume, unidade, dataValidade, dataEstoque, obsEstoque, status) VALUES
('1', 4.5, null, null, '2026-06-07', '2025-04-07', 'Estocado em embalagem padrão.', '1'),
('2', 4.5, null, null, '2025-07-25', '2025-04-25', 'Estocado em embalagem padrão.', '1'),
('4', 4.0, null, null, '2025-11-07', '2025-04-11', 'Estocado em embalagem padrão.', '1'),
('5', 2, null, null, '2026-04-20', '2025-04-20', 'Estocado em embalagem padrão.', '1'),
('7', 3, null, null, '2026-09-20', '2025-04-20', 'Estocado em embalagem padrão.', '1')

;
