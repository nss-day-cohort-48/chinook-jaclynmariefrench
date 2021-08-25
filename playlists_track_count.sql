-- Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
-- Playlist name
-- Total number of tracks on each playlist

SELECT 
    Playlist.PlaylistId, Playlist.name, COUNT(Playlisttrack.TrackId)
FROM 
    Playlist
    JOIN PlaylistTrack ON playlistTrack.playlistId=playlist.playlistid
    GROUP BY Playlist.PlaylistId;