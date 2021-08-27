SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry 
FROM Customer 
INNER JOIN Invoice
WHERE Customer.CustomerId == Invoice.CustomerId;