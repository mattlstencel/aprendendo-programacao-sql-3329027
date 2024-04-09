-- Existem 3 tipos de operadores: arit, relacionais e logicos
-- São usados junto das clausulas SELECT, WHERE e ON
-- Para realizar operações matemáticas em uma coluna

-- Construa uma consulta para a tabela "invoice_items" que retorne apenas as colunas InvoiceId, TrackId e UnitPrice.
SELECT
TrackId,
UnitPrice,
UnitPrice*1.33,
UnitPrice + 2.11,
(UnitPrice + 2.11)%2
FROM invoice_items
WHERE InvoiceId = 3;

SELECT
TrackId,
UnitPrice,
UnitPrice*1.33,
UnitPrice + 2.11,
(UnitPrice + 2.11)%2
FROM invoice_items
WHERE InvoiceId != 3;

  SELECT
  TrackId,
  UnitPrice,
  UnitPrice*1.33,
  UnitPrice + 2.11,
  (UnitPrice + 2.11)%2
  FROM invoice_items
  WHERE InvoiceId > 3
  AND InvoiceId !=10;

 SELECT
  TrackId,
  UnitPrice,
  UnitPrice*1.33,
  UnitPrice + 2.11,
  (UnitPrice + 2.11)%2
  FROM invoice_items
  WHERE InvoiceId = 1
  OR InvoiceId > 3;

  SELECT
  TrackId,
  UnitPrice,
  UnitPrice*1.33,
  UnitPrice + 2.11,
  (UnitPrice + 2.11)%2
  FROM invoice_items
  WHERE NOT InvoiceId = 1; 

-- Inclua nessa consulta mais três colunas, cada uma como resultado de uma operação aritmética diferente

-- Incremente essa consulta utilizando a cláusula WHERE, a qual restringirá o resultado apenas para linhas cujo o InvoiceId seja maior do que 20 e menor ou igual a 30

