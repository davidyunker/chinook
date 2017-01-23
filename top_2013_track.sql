SELECT SUM(IL.Quantity) as "Number of tracks sold", 
	T.Name, 
	I.InvoiceDate AS DateSold 
FROM InvoiceLine IL
JOIN Track T on T.TrackId = IL.TrackId 
JOIN Invoice I on I.InvoiceId = IL.InvoiceId 
WHERE I.InvoiceDate LIKE "%2013%" 
GROUP BY T.Name ORDER BY "Number of tracks sold" DESC
