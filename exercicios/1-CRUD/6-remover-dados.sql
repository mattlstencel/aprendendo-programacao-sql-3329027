DELETE FROM tabela
WHERE condicao;


-- Da tabela invoice, remova o invoice cujo o InvoiceID corresponda ao valor 33

DELETE FROM invoices
WHERE InvoiceId = 33;

DELETE FROM invoices
WHERE Total < 1;


-- Da tabela invoice, remova todos os invoices cujo o Total seja menor do que 1
