-- CTE: Common table expression
WITH tb_cliente_primeiro_dia AS (
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-25'
),
/* feita uma tabela de todos que estavam no primeiro dia*/

tb_cliente_ultimo_dia AS (
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-29'
)
--tabela de quem estava no ultimo dia 
SELECT *
FROM tb_cliente_primeiro_dia AS t1
--selecionou t1 e mesclou com t2

LEFT JOIN tb_cliente_ultimo_dia AS t2
ON t1.idCliente = t2.idCliente


