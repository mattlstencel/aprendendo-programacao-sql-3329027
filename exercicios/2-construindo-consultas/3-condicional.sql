CASE 
  WHEN condicao THEN faça isso
  ELSE faça isso
END AS titulo-coluna

-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros

SELECT DISTINCT
Country as País,
State as estado_sigla,
CASE
  WHEN State = 'SP' THEN 'São Paulo'
  WHEN State = 'RJ' THEN 'Rio de Janeiro'
  ELSE 'Estado desconhecido'
END AS Estado
FROM Customers
WHERE Country LIKE 'Brazil';

--'LIKE' é comumente usado para filtrar valores textuais
