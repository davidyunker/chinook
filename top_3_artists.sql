SELECT SUM(IL.Quantity) as "Number of tracks sold", 
	AR.Name
FROM InvoiceLine IL
JOIN Track T on T.TrackId = IL.TrackId 
JOIN Invoice I on I.InvoiceId = IL.InvoiceId 
JOIN Album AL on AL.AlbumId = T.AlbumId 
Join Artist AR on AR.ArtistId = AL.ArtistId 
GROUP BY AR.Name ORDER BY "Number of tracks sold" DESC
LIMIT 3