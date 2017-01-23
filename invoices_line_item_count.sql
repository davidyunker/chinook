SELECT I.InvoiceId as "Invoice ID", 
Count(IL.InvoiceLineId) as "Number Of Invoice Lines" 
From Invoice I 
Join InvoiceLine IL on I.InvoiceId = IL.InvoiceId 
GROUP BY I.InvoiceId