SELECT COUNT(pt.TrackId) as "Number of Tracks",
	pt.PlaylistId as "Playlist ID",
	p.Name as "Playlist name"
From PlaylistTrack pt 
Join Playlist P on p.PlaylistId = pt.PlaylistId 
Group by pt.PlaylistId 