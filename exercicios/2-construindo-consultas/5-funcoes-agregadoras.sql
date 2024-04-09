-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.

SELECT
SUM(Total) AS soma_compras
FROM invoices;

SELECT
BillingCountry AS pais,
SUM(Total) AS soma_compras
FROM invoices
WHERE BillingCountry = 'Austria';

SELECT
BillingCountry AS pais,
SUM(Total) AS soma_compras,
Count(Total) as qnt_compras
FROM invoices
WHERE BillingCountry = 'Austria';

SELECT
BillingCountry AS pais,
SUM(Total) AS soma_compras,
Count(Total) as qnt_compras,
Min(Total) as menor_compra,
Max(Total) as maior_compra
FROM invoices
WHERE BillingCountry = 'Austria';

SELECT
BillingCountry AS pais,
SUM(Total) AS soma_compras,
Count(Total) as qnt_compras,
Min(Total) as menor_compra,
Max(Total) as maior_compra,
round(Avg(Total),2) as ticket_medio
FROM invoices
WHERE BillingCountry = 'Austria';

