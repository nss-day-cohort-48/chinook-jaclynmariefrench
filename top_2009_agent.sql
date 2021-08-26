-- top_2009_agent.sql: Which sales agent made the most in sales in 2009?


SELECT
MAX(EmployeeTotalSales2009.Total) AS TopSales_2009,
EmployeeTotalSales2009.FullName
FROM (SELECT
        Employee.FirstName || ' ' || Employee.LastName FullName,
        ROUND(SUM(Invoice.Total), 2) Total
    FROM Employee
    JOIN Customer
        ON Customer.SupportRepId = Employee.EmployeeId
    JOIN Invoice
        ON Invoice.CustomerId = Customer.CustomerId
    WHERE InvoiceDate LIKE '%2009%'
    GROUP BY Employee.EmployeeId
    ) AS EmployeeTotalSales2009;