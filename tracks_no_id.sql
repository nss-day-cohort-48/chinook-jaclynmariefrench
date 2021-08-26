-- Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
-- Album name
-- Media type
-- Genre
SELECT DISTINCT
    album.title, 
    mediatype.name AS mediaType, 
    genre.name
FROM Track
    JOIN album ON Album.AlbumId = track.AlbumId
    JOIN MediaType ON MediaType.MediaTypeId = track.MediaTypeId
    JOIN Genre ON Genre.GenreId = track.GenreId;
