Select
    I.InvoiceId,
    C.FirstName,
    C.LastName,
    I.BillingCountry,
    I.InvoiceDate
From Customer C
join Invoice I on C.CustomerId = I.CustomerId 
where C.Country = "Brazil"