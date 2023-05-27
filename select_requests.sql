SELECT name, duration
FROM Track
WHERE duration = (
    SELECT MAX(duration) FROM Track
);

SELECT name
FROM Track
WHERE duration >= 210;

SELECT name
FROM Collection
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
FROM Artist
WHERE name NOT LIKE '% %';

SELECT name
FROM Track
WHERE lower(name) ~ '\m(my|мой)\M';

SELECT g.name as genre, count(ag.artist_id) as artist_count
FROM Genre g
LEFT JOIN ArtistGenre ag ON g.id = ag.genre_id
LEFT JOIN Artist a ON ag.artist_id = a.id
GROUP BY g.id
ORDER BY artist_count DESC;

SELECT COUNT(*) as track_count
FROM Track t
JOIN Album a ON t.album_id = a.id
WHERE a.release_year BETWEEN 2019 AND 2020;

SELECT name
FROM Artist
WHERE id NOT IN (
  SELECT artist_id
  FROM ArtistAlbum
  INNER JOIN Album ON Album.id = ArtistAlbum.album_id
  WHERE release_year = 2020
)

SELECT DISTINCT Collection.name
FROM Collection
JOIN CollectionTrack ON Collection.id = CollectionTrack.collection_id
JOIN Track ON Track.id = CollectionTrack.track_id
JOIN ArtistAlbum ON ArtistAlbum.album_id = Track.album_id
JOIN Artist ON Artist.id = ArtistAlbum.artist_id
WHERE Artist.name = 'Electroclub';

SELECT DISTINCT a.name AS album_name
FROM Album a
JOIN Track t ON t.album_id = a.id
JOIN ArtistAlbum aa ON aa.album_id = a.id
JOIN ArtistGenre ag ON ag.artist_id = aa.artist_id
GROUP BY a.id, ag.artist_id
HAVING COUNT(DISTINCT ag.genre_id) > 1;

SELECT DISTINCT name /* Получаем ТОЛЬКО уникальные имена альбомов. Другие данные в выводе не нужны */
FROM Album a/* Из таблицы альбомов */
JOIN ArtistAlbum aa ON aa.album_id = a.id /* Объединяем альбомы с промежуточной таблицей между альбомами и исполнителями */
JOIN ArtistGenre ag ON ag.artist_id = aa.artist_id
/* Объединяем промежуточную таблицу выше с промежуточной таблицей между исполнителями и жанрами */
GROUP BY a.id
HAVING COUNT(distinct ag.genre_id) > 1; 

SELECT t.name as track_name
FROM Track t
LEFT JOIN CollectionTrack ct ON ct.track_id = t.id
WHERE ct.collection_id IS null

SELECT a.name as artist_name, t.name as track_name, t.duration as track_duration
FROM Track t
JOIN ArtistAlbum aa ON aa.album_id = t.album_id
JOIN Artist a ON a.id = aa.artist_id
WHERE t.duration = (
  SELECT MIN(duration)
  FROM Track
);

SELECT a.name AS album_name
FROM Album a
JOIN Track t ON t.album_id = a.id
GROUP BY a.id
HAVING COUNT(t.id) = (
  SELECT COUNT(t.id)
  FROM Album a
  JOIN Track t ON t.album_id = a.id
  GROUP BY a.id
  ORDER BY COUNT(t.id)
  LIMIT 1
);
