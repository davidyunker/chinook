SELECT COUNT (*) as "Number of invoices",
substr (InvoiceDate, 1, 4) as "Year"
FROM Invoice
WHERE InvoiceDate LIKE "2011%" OR InvoiceDate LIKE "2009%"
Group BY substr (InvoiceDate, 1, 4)