WITH tb_cliente_primeiro_dia AS (
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-25'
),
tb_cliente_ultimo_dia AS (
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-29'
),

tb_join AS (
    SELECT t1.idCliente AS totalPrimeiroD,
           t2.idCliente AS totalUltimoD
    FROM tb_cliente_primeiro_dia AS t1
    LEFT JOIN tb_cliente_ultimo_dia AS t2
    ON t1.idCliente = t2.idCliente
-- agora vamos juntas as duas colunas criadas e trabalhar nelas para contabilizar os presentes 
--consulta de da tabela join e usar para contar 
)
SELECT count(totalPrimeiroD),
       count(totalUltimoD),
       1. * count(totalUltimoD) / count(totalPrimeiroD) AS proporção
FROM tb_join



