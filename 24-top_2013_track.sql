-- top_2013_track.sql:

-- Provide a query that shows the most purchased track(s) of 2013.

SELECT 
    Track.name AS TopTracks,
    COUNT(InvoiceLine.InvoiceId) AS TrackCount
FROM Track
    JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId
    JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
WHERE Invoice.InvoiceDate LIKE "%2013%"
GROUP BY TopTracks
ORDER BY TrackCount DESC; 

