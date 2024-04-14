SELECT CustomerId, total 
FROM invoices
ORDER BY CustomerId
LIMIT 10

SELECT CustomerId, sum(total) AS total
FROM invoices
GROUP BY CustomerId
LIMIT 10

SELECT CustomerId, InvoiceDate
FROM invoices
ORDER BY CustomerId
LIMIT 10

SELECT CustomerId, InvoiceDate, Total
FROM invoices
ORDER BY CustomerId
LIMIT 10

SELECT BillingCountry, BillingCity, count(*)
FROM invoices
GROUP BY BillingCountry, BillingCity
ORDER BY count(*) DESC

SELECT BillingCountry, BillingCity, count(*)
FROM invoices
GROUP BY BillingCountry, BillingCity
HAVING count(*) > 7
ORDER BY count(*) DESC

SELECT BillingCountry, BillingCity, count(*)
FROM invoices
GROUP BY BillingCountry, BillingCity
ORDER BY count(*) DESC

SELECT BillingCountry, BillingCity, COUNT(*)
FROM invoices
GROUP BY BillingCity
HAVING COUNT(*)>6
ORDER BY BillingCountry

SELECT BillingCountry, COUNT(*)
FROM invoices
GROUP BY BillingCountry
HAVING COUNT(*)>6
ORDER BY BillingCountry

SELECT CustomerId, InvoiceDate, total
FROM invoices
ORDER BY CustomerId

SELECT CustomerId, MAX(InvoiceDate)
FROM invoices
GROUP BY CustomerId

SELECT tba.CustomerId, tba.InvoiceDate, tba.Total FROM invoices AS tba CROSS JOIN
(SELECT tbb.CustomerId, MAX(tbb.InvoiceDate) AS max_date
FROM invoices AS tbb
GROUP BY CustomerId) max_sales
WHERE tba.CustomerId = max_sales.CustomerId
AND tba.InvoiceDate = max_sales.max_date
ORDER BY tba.CustomerId

SELECT tba.CustomerId, tba.InvoiceDate, tba.Total FROM invoices AS tba CROSS JOIN
(SELECT tbb.CustomerId, MAX(tbb.InvoiceDate) AS max_date
FROM invoices AS tbb
GROUP BY CustomerId) max_sales
ORDER BY tba.CustomerId

SELECT CustomerId,
InvoiceDate,
Total
FROM (
  SELECT CustomerId,
  InvoiceDate,
  Total,
  ROW_NUMBER() OVER (PARTITION BY CustomerId ORDER BY InvoiceDate DESC) AS row_num
  FROM invoices
) AS ranked_invoices
WHERE row_num = 1 


WITH tb_order AS (SELECT CustomerId,
  InvoiceDate,
  Total,
  ROW_NUMBER() OVER (PARTITION BY CustomerId ORDER BY InvoiceDate DESC) AS row_num
  FROM invoices)

SELECT CustomerId,
InvoiceDate,
Total
FROM tb_order
WHERE row_num = 1



SELECT CustomerId, count(*)
FROM invoices
GROUP BY CustomerId

Select InvoiceDate,
ROW_NUMBER() OVER (ORDER BY InvoiceDate DESC) AS rnumber
FROM invoices

Select InvoiceDate FROM invoices
ORDER BY InvoiceDate DESC

SELECT * FROM invoices