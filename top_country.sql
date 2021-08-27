-- top_country.sql:

-- Which country's customers spent the most?
-- HINT: Use the MAX function on a subquery.
SELECT 
    MaxCountry.BillingCountry,
    MAX(MaxCountry.TotalSales) AS TopSales
FROM (SELECT 
        ROUND(SUM(invoice.total), 2) AS TotalSales,
        Invoice.BillingCountry
    FROM Invoice
    GROUP BY Invoice.BillingCountry) AS MaxCountry;



