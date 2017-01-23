Select
	L.InvoiceLineId,
	T.Name,
	R.Name
From InvoiceLine L
join Track T on T.TrackId = L.TrackId
join Album A on A.AlbumId = T.AlbumId
join Artist R on R.ArtistId = A.ArtistId  
Order By InvoiceLineId