-- 5. Qual o valor médio de pontos positivos por dia?
 SELECT count(distinct substr(DtCriacao,1,10)) AS DiasAno, 
        sum(QtdePontos) AS Ptdia, 
        sum(QtdePontos) / count(distinct substr(DtCriacao,1,10)) AS mediaDia

FROM transacoes

WHERE QtdePontos > '0'