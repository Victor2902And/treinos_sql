-- 9. Dos clientes que começaram SQL no primeiro dia, quantos chegaram ao 5o dia?

SELECT count(DISTINCT idCliente)
FROM transacoes AS t1
WHERE t1.idCliente IN (

        SELECT idCliente
        FROM transacoes 
        WHERE substr(DtCriacao,1,10) = '2025-08-25'
)
-- CONTAGEM DE TODOS QUE ESTIVERAM NO PRIMEIRO DIA - 452

-- CONTAGEM DE TODOS DO PRIMEIRO E ULT DIA - 207
AND substr(DtCriacao,1,10) = '2025-08-29'







