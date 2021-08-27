-- sales_agent_total_sales.sql:

-- Provide a query that shows total sales made by each sales agent. The resultant table should include:
-- Employee full name
-- Total sales for each employee (all time)

SELECT 
    Employee.FirstName ||" "|| Employee.LastName AS FullName,
    SUM(Invoice.Total) AS TotalSales
FROM Employee
    JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
    JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
GROUP BY FullName;


