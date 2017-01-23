Select max (totalsales) 
	as "Highest Sales Earned",
	"Employee Name"
	
	From (select sum(I.Total) as totalsales,
			E.FirstName || " " || E.LastName as "Employee Name"
	From Employee E 
	join Customer C on E.EmployeeId = C.SupportRepId 
	join Invoice I on C.CustomerId = I.CustomerId 
	group by E.EmployeeId)
	