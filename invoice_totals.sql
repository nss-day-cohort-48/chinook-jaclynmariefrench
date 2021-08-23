SELECT 
    Invoice.Total,
    Customer.FirstName ||" "|| Customer.LastName AS CustomerFullName,
    Customer.Country,
    Employee.FirstName ||" "|| Employee.LastName AS ServiceAgent
FROM Invoice
    JOIN Customer ON Customer.CustomerId = Invoice.CustomerId 
    JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId 
ORDER BY Customer.LastName; 