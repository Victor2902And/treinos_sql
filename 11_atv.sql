--2. Qual cliente juntou mais pontos positivos em 2025-05?



select DISTINCT idCliente,
       sum(QtdePontos) AS Totalpontos
       

FROM clientes

WHERE substr(DtCriacao,1,10) >= '2025-01-01'
AND substr(DtCriacao,1,10) < '2026-01-01'  

GROUP BY idCliente

ORDER BY sum(QtdePontos) DESC 