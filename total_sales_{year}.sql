SELECT SUM (I.Total) as "Invoice totals",
substr (InvoiceDate, 1, 4) as "Year"
FROM Invoice I
WHERE I.InvoiceDate LIKE "2011%" OR InvoiceDate LIKE "2009%"
Group BY substr (InvoiceDate, 1, 4)