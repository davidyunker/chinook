SELECT SUM(IL.Quantity) as "Number of tracks sold", 
	T.Name
FROM InvoiceLine IL
JOIN Track T on T.TrackId = IL.TrackId 
JOIN Invoice I on I.InvoiceId = IL.InvoiceId 
GROUP BY T.Name ORDER BY "Number of tracks sold" DESC
LIMIT 5