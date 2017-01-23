SELECT 
E.FirstName || " " || E.LastName as "Employee name", 
SUM (I.Total) as "Invoice Totals"

FROM Employee E 
JOIN Customer C on C.SupportRepId = E.EmployeeId
JOIN Invoice I on I.CustomerId = C.CustomerId 
Group by "Employee Name"