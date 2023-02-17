--quantuty executor in genre
SELECT genre_name, COUNT(executor_id) musicians FROM genre g
JOIN genre_executor m ON g.genre_id = m.genre_id 
GROUP BY g.genre_name 
order BY musicians DESC;

--quantity track to album 2019-2020 years
SELECT COUNT(track_name) FROM track t
JOIN album a ON t.album_id = a.album_id
WHERE a.date BETWEEN 2019 and 2020;

--average timing track to album
SELECT album_name, AVG(duration) avg_dur FROM album a
JOIN track t ON t.album_id = a.album_id
GROUP BY a.album_name
order BY avg_dur DESC;

--all executor where non album to 2020 year
SELECT executor_name FROM executor e
JOIN album a ON e.executor_id = a.album_id
WHERE date != 2020;

--collection name where '' executor
SELECT collection_name FROM collection c
JOIN track_collection tc ON c.collection_id = tc.collection_id
JOIN track t ON t.track_id = tc.track_id
JOIN album a ON a.album_id = t.album_id
JOIN executor_album ea ON a.album_id = ea.album_id
JOIN executor e ON e.executor_id = ea.executor_id
WHERE executor_name = 'Executor_6'
GROUP BY c.collection_name;

--album name where execut > 1 genre
SELECT album_name FROM album a 
JOIN executor_album ea ON a.album_id = ea.album_id 
JOIN genre_executor ge ON ea.executor_id = ge.executor_id 
GROUP BY a.album_name
HAVING COUNT(ge.genre_id) > 1;

--track non collection
SELECT track_name FROM track t 
LEFT JOIN track_collection tc ON t.track_id = tc.track_id
WHERE collection_id is null;

--executor (min timing track)
SELECT track_name, duration FROM track
WHERE duration = (SELECT MIN(duration) FROM track);

--album (min sum track)
SELECT album_name, COUNT(album_name) FROM album a 
JOIN track t ON t.album_id = a.album_id
GROUP BY a.album_name
HAVING COUNT(album_name) < 
(SELECT MAX(COUNT(album_name)) OVER () FROM album a
JOIN track t ON t.album_id = a.album_id
GROUP BY a.album_name
limit 1);
