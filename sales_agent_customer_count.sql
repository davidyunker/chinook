SELECT COUNT (*) as "Number of customers",
E.FirstName || " " || E.LastName as "Sales rep name"
FROM Customer C 
JOIN Employee E on E.EmployeeId = C.SupportRepId 
Group BY C.SupportRepId 