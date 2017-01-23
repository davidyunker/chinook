Select max (totalspent) 
	as "Country whose customers spent the most",
	"Country"
	From (select sum(I.Total) as totalspent,
	C.Country as "Country"
	From Customer C 
	join Invoice I on C.CustomerId = I.CustomerId 
	group by C.Country)