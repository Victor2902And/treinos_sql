-- 3. Qual cliente fez mais transações no ano de 2024?
-- SELECT IdCliente
-- FROM transacoes
-- WHERE idCliente = '5f8fcbe0-6014-43f8-8b83-38cf2f4887b3'

SELECT DISTINCT idCliente,
       count(IdTransacao) AS Movimentações
    
FROM transacoes

WHERE DtCriacao >= '2024-01-01'
AND DtCriacao < '2025-01-01'

GROUP BY idCliente

ORDER BY Movimentações DESC

