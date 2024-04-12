-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
SELECT
cus.CustomerId AS id_cliente,
cus.FirstName AS nome,
SUM(inv.Total) AS total_gasto,
COUNT(inv.CustomerId) AS qnt_compras
FROM
invoices AS inv
INNER JOIN customers AS cus ON inv.CustomerId = cus.CustomerId
GROUP BY id_cliente
HAVING SUM(inv.Total) >= 40;


-- HAVING filtra a consula 
-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30


-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
