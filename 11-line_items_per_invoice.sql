SELECT 
    InvoiceLineId, COUNT(InvoiceLineId) AS TotalInvoiceItems
FROM InvoiceLine
    JOIN Invoice ON InvoiceLine.InvoiceLineId = Invoice.InvoiceId
GROUP BY InvoiceLine.InvoiceId
ORDER BY InvoiceLineId;