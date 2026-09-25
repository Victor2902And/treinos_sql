--8. Lista de transações com o produto “Resgatar Ponei”;
SELECT t1.idTransacaoProduto,
       t2.IdProduto,
       t2.DescNomeProduto
FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

WHERE DescNomeProduto LIKE '%resgatar ponei%'