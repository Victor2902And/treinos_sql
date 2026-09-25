--2. Lista de pedidos realizados no fim de semana;
SELECT idtransacao AS Pedidos,
       strftime('%w', (substr(DtCriacao,1,10))) AS DiaSem

FROM transacoes 
WHERE DiaSem IN ('6','0')
