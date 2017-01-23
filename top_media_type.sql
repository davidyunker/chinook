SELECT SUM(IL.Quantity) as "Number of media types sold", 
	M.Name
FROM InvoiceLine IL
JOIN Track T on T.TrackId = IL.TrackId 
JOIN MediaType M on M.MediaTypeId = T.MediaTypeId 
GROUP BY M.Name ORDER BY "Number of media types sold" DESC
LIMIT 1