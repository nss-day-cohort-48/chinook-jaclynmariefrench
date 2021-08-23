SELECT 
    Employee.FirstName ||" "|| Employee.LastName AS ServiceAgent, 
    Invoice.InvoiceId
FROM Employee
    JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
    JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
ORDER BY Employee.LastName; 