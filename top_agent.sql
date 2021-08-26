-- top_agent.sql:

-- Which sales agent made the most in sales over all?
SELECT
MAX(EmployeeTopSales.Total) AS TopSales,
EmployeeTopSales.FullName
FROM (SELECT
        Employee.FirstName || ' ' || Employee.LastName FullName,
        ROUND(SUM(Invoice.Total), 2) Total
    FROM Employee
    JOIN Customer
        ON Customer.SupportRepId = Employee.EmployeeId
    JOIN Invoice
        ON Invoice.CustomerId = Customer.CustomerId
    GROUP BY Employee.EmployeeId
    ) AS EmployeeTopSales;