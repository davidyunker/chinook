Select
    E.FirstName, E.LastName as "Full name", 
	I.InvoiceId
From Employee E
join Customer C on E.EmployeeId = C.SupportRepId 
join Invoice I on I.CustomerId = C.CustomerId 