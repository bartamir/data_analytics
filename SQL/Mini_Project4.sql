CREATE TABLE videos(ID serial primary key, Title varchar(255) not null, length time, URL varchar(255) not null);
SELECT * from videos;
INSERT INTO videos(title, length, url) VALUES ('Garry Kasparov Immortal Game', '00:13:44', 'www.youtube.com/watch?v=uDi6s89ooak'),
('The Best Of George Carlin', '1:02:02', 'www.youtube.com/watch?v=Hy-sVByUHqE'),
('Top 35 Legendary Goals In Football History', '00:10:52', 'www.youtube.com/watch?v=RLxWIgoo-ic');
SELECT * from videos;

CREATE TABLE reviews(id serial primary key, username varchar(255) not null, video varchar(255), rating int, review varchar(255));
SELECT * from reviews;
INSERT INTO reviews(username, video, rating, review) VALUES ('raterR', 'Kasparov', '4', 'One of the best games I have ever seen'),
('yallclowns', 'Carlin', '5', 'It would have been so great to have George with us for 2020'), 
('pelevibes', 'Goals', '5', 'Can someone please tell me what we will do when Ronaldo and Messi retire?'),
('grandtoaster', 'Kasparov', '3', 'Magnus is GOAT'), 
('Goalassso', 'Goals', '4', 'I would pay $2000 to see a match in person, bring back the audience!'),
('HumormeHomer', 'Carlin', '5', 'The best stand-up comedian in history - by far');

SELECT * FROM videos inner join reviews on videos.id = reviews.id;
SELECT * FROM videos full outer join reviews on videos.id = reviews.id;

