-- sales_per_country.sql:

-- Provide a query that shows the total sales per country.
SELECT 
    Invoice.BillingCountry AS Country,
    ROUND(SUM(Invoice.Total), 2) AS TotalSales
FROM Invoice
GROUP BY Invoice.BillingCountry;