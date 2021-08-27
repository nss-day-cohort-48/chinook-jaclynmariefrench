-- invoices_line_item_count.sql:

-- Provide a query that shows all Invoices. The resultant table should include:
-- InvoiceId
-- The total number of line items on each invoice

SELECT 
    InvoiceId AS ID,
    COUNT(InvoiceLineId) AS TotalLineItems
FROM InvoiceLine
GROUP BY InvoiceId;