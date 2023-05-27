INSERT INTO Artist(name) VALUES
('Dianna Mcfarland'),
('Basil Owens'),
('Garrett Compton'),
('Jonathan Rhodes'),
('Jean Russo'),
('Electroclub');

INSERT INTO Genre(name) VALUES 
('Rock'),
('Pop'),
('Jazz'),
('Hip-hop'),
('Electronic');

INSERT INTO ArtistGenre(artist_id, genre_id) VALUES 
(1, 2),
(2, 4),
(3, 1),
(4, 3),
(5, 5),
(6, 5);

INSERT INTO Album(name, release_year) VALUES 
('Wrong', 1980),
('Trial', 1982),
('Chance', 1991),
('Strap', 2000),
('Pumpkin', 2011),
('Sellshock', 2019),
('Clinic', 2020),
('Hacker', 2023),
('Silence', 2005),
('Techno Clock', 2016);

INSERT INTO ArtistAlbum(artist_id, album_id) VALUES 
(1, 2),
(2, 3),
(3, 1),
(4, 4),
(5, 5),
(6, 6),
(5, 7),
(6, 8),
(6, 2),
(6, 9),
(6, 10);

INSERT INTO Track(name, duration, album_id) VALUES
('A Hundred and Ten Percent', 312, 1),
('I Smell a Rat', 255, 1),
('Jaws of Life', 258, 2),
('What Am I, Chopped Liver?', 294, 2),
('A Cat Nap', 301, 3),
('A Cut Above', 219, 3),
('A Busy Body', 284, 4),
('A Bite at the Cherry', 356, 4),
('Beating Around the Bush', 228, 5),
('Long In The Tooth', 285, 5),
('Eat My Hat', 278, 6),
('Ugly Duckling', 215, 6),
('Beat myself', 267, 6),
('My cat said meow', 278, 6),
('Locked my', 230, 6),
('Put a Sock In It', 287, 7),
('Knock Your Socks Off', 258, 7),
('Break The Ice', 209, 8),
('Shot In the Dark', 318, 8),
('I dont care', 220, 9),
('Diversion', 267, 10);

INSERT INTO Collection(name, release_year) VALUES
('Close But No Cigar', 1990),
('On the Same Page', 2005),
('My Cup of Tea', 2002),
('No Ifs, Ands, or Buts', 2005),
('Beating a Dead Horse', 2011),
('Let Her Rip', 2018),
('Up In Arms', 2021);

INSERT INTO CollectionTrack(collection_id, track_id) VALUES
(1, 2),
(1, 4),
(1, 6),
(2, 2),
(2, 4),
(2, 7),
(3, 5),
(3, 6),
(3, 8),
(4, 7),
(4, 8),
(4, 10),
(5, 9),
(5, 10),
(5, 1),
(6, 4),
(6, 9),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(7, 16),
(7, 17),
(7, 18),
(7, 19);
