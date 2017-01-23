SELECT COUNT (*) as "Number of invoices",
BillingCountry as "Billing Country"
FROM Invoice  
Group BY substr (BillingCountry, 1, 4)