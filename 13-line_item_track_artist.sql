-- Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.
SELECT 
    invoiceline.invoicelineid, invoiceline.InvoiceId, track.name, track.composer
FROM 
    Track
JOIN 
    invoiceline ON invoiceline.trackid=track.trackid;