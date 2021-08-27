-- Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.
SELECT
BillingCountry AS Country,
COUNT(InvoiceId) AS InvoiceTotals
FROM Invoice
GROUP BY BillingCountry;