SELECT FirstName || LastName as "Full Name",
CustomerId,
Country 
FROM Customer 
WHERE Country != "USA"
ORDER BY Country 