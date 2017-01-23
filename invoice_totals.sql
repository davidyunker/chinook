Select
	I.Total,
	C.FirstName || " " || C.LastName as "Full name",
	C.Country,
	E.FirstName || " " || E.LastName as "Sales agent name"
From Invoice I
join Customer C on I.CustomerId = C.CustomerId 
join Employee E on E.EmployeeId = C.SupportRepId 