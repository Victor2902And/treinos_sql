-- 5. Qual o valor médio de pontos positivos por dia?
SELECT substr(DtCriacao,1,10) AS DiasAno, 
       sum(QtdePontos) AS Ptdia,
       

       
FROM transacoes

WHERE QtdePontos > '0'

GROUP BY substr(DtCriacao,1,10)

ORDER BY DtCriacao DESC