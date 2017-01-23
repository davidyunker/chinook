Select
	L.InvoiceLineId,
	T.Name
From InvoiceLine L
join Track T on T.TrackId = L.TrackId 
Order By InvoiceLineId