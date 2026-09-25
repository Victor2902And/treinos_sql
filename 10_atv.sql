-- 1. Quantos clientes tem email cadastrado?
SELECT  count(DISTINCT idCliente) AS ClintesCRemails

FROM clientes

WHERE flEmail !='0' 
       

