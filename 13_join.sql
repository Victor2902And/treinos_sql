-- Quais clientes mais perderam pontos por Lover?
SELECT t1.idCliente,
       sum(t1.QtdePontos) AS TbPontos,
       DescCategoriaProduto
FROM transacoes AS t1
    LEFT JOIN transacao_produto t2
    ON t1.IdTransacao = t2.IdTransacao
    LEFT JOIN produtos AS t3
    ON t2.IdProduto = t3.IdProduto
WHERE QtdePontos < 0 
AND t3.DescCategoriaProduto LIKE '%lover%'
GROUP BY idCliente
ORDER BY TbPontos 