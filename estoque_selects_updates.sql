USE `estoque_sos`;

SELECT * FROM `usuario`;
SELECT * FROM `secaoproduto`;
SELECT * FROM `subsecao`;
SELECT * FROM `produto`;
SELECT * FROM `estoque`;
SELECT * FROM `secaodica`;
SELECT * FROM `dica`;
SELECT * FROM `usuario_has_secao`;

SELECT nome, email FROM usuario WHERE tipoUsuario = 'C';

SELECT * FROM produto WHERE tipoMedida = 'peso';

SELECT sb.nomeSubSecao, COUNT(p.idProduto) AS totalProdutos
FROM subSecao AS SB LEFT JOIN produto AS P ON sb.idSubSecao = p.subSecao_idSubSecao GROUP BY sb.nomeSubSecao;

SELECT p.nomeProduto, sp.nomeSecaoProduto, sb.nomeSubSecao FROM produto AS P
JOIN subSecao AS SB ON p.subSecao_idSubSecao = sb.idSubSecao
JOIN secaoProduto AS SP ON sb.secaoProduto_idSecaoProduto = sp.idSecaoProduto;

SELECT d.tituloDica, sd.nomeSecaoDica FROM dica AS D
JOIN secaoDica AS SD ON d.secaoDica_idSecaoDica = sd.idSecaoDica;