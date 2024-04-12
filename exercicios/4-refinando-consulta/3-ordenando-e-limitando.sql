-- Desenvolva uma consulta para a tabela "customers" que retorne apenas 10 linhas
SELECT
CustomerId as id,
FirstName as nome,
Country as pais
FROM
customers
order by pais asc
limit 10 offset 3;

SELECT
CustomerId as id,
FirstName as nome,
Country as pais
FROM
customers
order by pais asc,
nome desc
limit 10;

SELECT
CustomerId as id,
FirstName as nome,
Country as pais
FROM
customers
order by pais asc,
nome asc
limit 10;

SELECT Country as pais,
count(CustomerId) as qtd_consumidores 
FROM
customers
GROUP BY country
order by pais asc
limit 10;

-- Usando a consulta anterior, ordene a coluna "Country" de forma crescente e "FirstName" de forma decrescente


-- Continue usando a consulta anterior, dessa vez retorne 10 resultados, no entando ignore as 3 primeiras linhas
