SELECT SUM (I.Total) as "Invoice totals",
substr (BillingCountry, 1) as "Country"
FROM Invoice I
Group BY substr (BillingCountry, 1)