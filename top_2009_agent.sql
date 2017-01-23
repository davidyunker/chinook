Select max (totalsales) 
	as "Highest Sales Earned in 2009",
	"Employee Name"
	
	From (select sum(I.Total) as totalsales,
			E.FirstName || " " || E.LastName as "Employee Name"
	From Employee E 
	join Customer C on E.EmployeeId = C.SupportRepId 
	join Invoice I on C.CustomerId = I.CustomerId 
	where I.InvoiceDate like "2009%" 
	group by E.EmployeeId)