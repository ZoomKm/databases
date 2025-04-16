SELECT * FROM usuario WHERE data_cadastro > 2023-03-01;
SELECT * FROM jogo WHERE preco > 100;
SELECT * FROM desenvolvedora WHERE ano_fundacao > 2000;
SELECT * FROM jogo WHERE id_desenvolvedora = 1;

SELECT AVG(preco) FROM jogo;
SELECT SUM(preco) FROM jogo AS J JOIN biblioteca AS B ON j.id = b.id_jogo WHERE id_usuario = 1;
SELECT MAX(preco) FROM jogo WHERE id_desenvolvedora = 4;

SELECT * FROM jogo AS J JOIN jogocategoria AS JC ON j.id = jc.id_jogo WHERE id_categoria=3;
SELECT nome,titulo FROM usuario AS U JOIN biblioteca AS B ON u.id = b.id_usuario 
JOIN jogo AS J ON j.id = b.id_jogo;

SELECT COUNT(id) FROM jogo WHERE id_desenvolvedora IN (1,2,4,7,9,10);
