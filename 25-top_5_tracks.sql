-- top_5_tracks.sql:

-- Provide a query that shows the top 5 most purchased tracks over all.

SELECT 
    Track.name AS MostPurchased,
    COUNT(InvoiceLine.InvoiceId) AS TrackCount
FROM Track
    JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId
GROUP BY Track.name
ORDER BY TrackCount DESC
LIMIT 5; 