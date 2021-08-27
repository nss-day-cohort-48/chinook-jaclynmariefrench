SELECT
   ROUND(SUM(total), 2) as YearsTotal
FROM Invoice
WHERE InvoiceDate LIKE "2009%"
   OR InvoiceDate LIKE "2011%";

SELECT
   COUNT(InvoiceId)
FROM
   Invoice
WHERE InvoiceDate LIKE "%2009%"; 

SELECT 
   COUNT(InvoiceId)
FROM 
   Invoice
WHERE InvoiceDate LIKE "%2011%";