-- sales_agent_customer_count.sql:

-- Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
-- Employee full name
-- Total number of customers assigned to each employee (even if it's zero)

SELECT 
    Employee.FirstName ||" "|| Employee.LastName AS FullName,
    COUNT(Customer.CustomerId) AS TotalCustomers
FROM Employee
    JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId;