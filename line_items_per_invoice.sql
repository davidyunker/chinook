SELECT COUNT (*) as "Number of InvoiceLine IDs",
substr (InvoiceId, 1, 2) as "Invoice ID"
FROM InvoiceLine I
Group BY substr (InvoiceId, 1, 2)
Order By length ("Invoice ID"), "InvoiceID"