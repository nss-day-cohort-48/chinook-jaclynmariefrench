-- top_3_artists.sql:

-- Provide a query that shows the top 3 best selling artists.
SELECT 
    Artist.name AS ArtistName,
    COUNT(InvoiceLine.TrackId) AS Count
FROM Artist
    JOIN Album ON Album.ArtistId = Artist.ArtistId
    JOIN Track ON Track.AlbumId = Album.AlbumId
    JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId
    JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Artist.Artistid
ORDER BY Count DESC
LIMIT 3; 



