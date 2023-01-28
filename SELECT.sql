-- название и год выхода альбомов, вышедших в 2018 году
SELECT name, release_year FROM album
WHERE release_year = 2018;

--название и продолжительность самого длительного трека
SELECT name, duration FROM music_track
ORDER BY duration DESC 
LIMIT 1;

--название треков, продолжительность которых не менее 3,5 минуты
SELECT name FROM music_track
WHERE duration >= '00:03:30';

--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name FROM digest
WHERE release_year BETWEEN 2018 AND 2020;

--исполнители, чье имя состоит из 1 слова
SELECT name FROM singer
WHERE name NOT LIKE ('% %');

--название треков, которые содержат слово “my”
SELECT name FROM music_track
WHERE string_to_array(lower(name), ' ') && ARRAY['my', 'мой']; 

