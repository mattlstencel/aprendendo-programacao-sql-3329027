-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT
CustomerId as id,
FirstName as nome,
LastName as sobrenome,
Address as endereco
FROM customers
WHERE
Country LIKE 'Bra%'

SELECT
CustomerId as id,
lower(FirstName) as nome,
Upper(LastName) as sobrenome,
Address as endereco
FROM customers
WHERE
Country LIKE 'Bra%'

SELECT
CustomerId as id,
FirstName as nome,
LastName as sobrenome,
FirstName || ' ' || LastName as nome_completo,
Replace(Address, 'Av.', 'Avenida') as endereco
FROM customers
WHERE
Country LIKE 'Bra%'

-- Na consulta anterior, converta o sobrenome para letras maiúsculas


-- Na consulta anterior, converta o nome para letras minúsculas


-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome


-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço


-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
