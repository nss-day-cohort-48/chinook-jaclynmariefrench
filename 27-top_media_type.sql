-- top_media_type.sql:

-- Provide a query that shows the most purchased Media Type.
SELECT 
    MediaType.Name AS TopMediaType,
    COUNT(InvoiceLine.TrackId) AS Count
FROM MediaType
    JOIN Track ON Track.MediaTypeId = MediaType.MediaTypeId
    JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId
GROUP BY MediaType.MediaTypeId
ORDER BY COUNT DESC
LIMIT 1; 