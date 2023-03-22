-- Adding data
use movies;

-- Adding movies

insert into movies (movie_titel, release_date, runtime) values ('The Shawshank Redemption', '1994-09-23', 142);
insert into movies (movie_titel, release_date, runtime) values ('The Godfather', '1972-03-24', 175);
insert into movies (movie_titel, release_date, runtime) values ('The Dark Knight', '2008-07-14', 152);
insert into movies (movie_titel, release_date, runtime) values ('Forrest Gump', '1994-06-23', 142);
insert into movies (movie_titel, release_date, runtime) values ('The Lord of the Rings: The Fellowship of the Ring', '2001-12-10', 178);
insert into movies (movie_titel, release_date, runtime) values ('Pulp Fiction', '1994-10-14', 154);
insert into movies (movie_titel, release_date, runtime) values ('Fight Club', '1999-10-15', 139);
insert into movies (movie_titel, release_date, runtime) values ('Inception', '2010-07-08', 148);
insert into movies (movie_titel, release_date, runtime) values ('The Matrix', '1999-03-31', 136);
insert into movies (movie_titel, release_date, runtime) values ('Star Wars: Episode IV - A New Hope', '1977-05-25', 121);

-- adding genres
insert into genre (gen_titel) values ('Drama');
insert into genre (gen_titel) values ('Drama');
insert into genre (gen_titel) values ('Action');
insert into genre (gen_titel) values ('Drama');
insert into genre (gen_titel) values ('Fantasy');
insert into genre (gen_titel) values ('Drama');
insert into genre (gen_titel) values ('Horror');
insert into genre (gen_titel) values ('Sci-Fi');
insert into genre (gen_titel) values ('Action');
insert into genre (gen_titel) values ('Fantasy');

-- adding genres to movies
-- For movie 1
insert into movie_genres (movie_id, gen_id) values (1, 2); -- Drama
insert into movie_genres (movie_id, gen_id) values (1, 3); -- Horror

-- For movie 2
insert into movie_genres (movie_id, gen_id) values (2, 5); -- Sci-Fi
insert into movie_genres (movie_id, gen_id) values (2, 2); -- Drama

-- For movie 3
insert into movie_genres (movie_id, gen_id) values (3, 3); -- Horror

-- For movie 4
insert into movie_genres (movie_id, gen_id) values (4, 2); -- Drama

-- For movie 5
insert into movie_genres (movie_id, gen_id) values (5, 4); -- Fantasy

-- For movie 6
insert into movie_genres (movie_id, gen_id) values (6, 2); -- Drama

-- For movie 7
insert into movie_genres (movie_id, gen_id) values (7, 3); -- Horror
insert into movie_genres (movie_id, gen_id) values (7, 2); -- Drama

-- For movie 8
insert into movie_genres (movie_id, gen_id) values (8, 3); -- Horror
insert into movie_genres (movie_id, gen_id) values (8, 2); -- Drama

-- For movie 9
insert into movie_genres (movie_id, gen_id) values (9, 1); -- Action
insert into movie_genres (movie_id, gen_id) values (9, 2); -- Drama

-- For movie 10
insert into movie_genres (movie_id, gen_id) values (10, 3); -- Horror


-- Adding directors

insert into directors (dir_first_name, dir_last_name) value ('Frank', 'Darabont');
insert into directors (dir_first_name, dir_last_name) value ('Francis', 'Coppola');
insert into directors (dir_first_name, dir_last_name) value ('Christopher', 'Nolan');
insert into directors (dir_first_name, dir_last_name) value ('Robert', 'Zemeckis');
insert into directors (dir_first_name, dir_last_name) value ('Peter', 'Jackson');
insert into directors (dir_first_name, dir_last_name) value ('Quentin', 'Tarantino');
insert into directors (dir_first_name, dir_last_name) value ('David', 'Fincher');
insert into directors (dir_first_name, dir_last_name) value ('Christopher', 'Nolan');
insert into directors (dir_first_name, dir_last_name) value ('Lana', 'Wachowski');
insert into directors (dir_first_name, dir_last_name) value ('George', 'Lucas');

-- Adding actors

-- For movie 1: The Shawshank Redemption
insert into actors (actor_first_name, actor_last_name) values ('Tim', 'Robbins');
insert into actors (actor_first_name, actor_last_name) values ('Morgan', 'Freeman');
insert into actors (actor_first_name, actor_last_name) values ('Bob', 'Gunton');

-- For movie 2: The Godfather
insert into actors (actor_first_name, actor_last_name) values ('Marlon', 'Brando');
insert into actors (actor_first_name, actor_last_name) values ('Al', 'Pacino');
insert into actors (actor_first_name, actor_last_name) values ('James', 'Caan');

-- For movie 3: The Dark Knight
insert into actors (actor_first_name, actor_last_name) values ('Christian', 'Bale');
insert into actors (actor_first_name, actor_last_name) values ('Heath', 'Ledger');
insert into actors (actor_first_name, actor_last_name) values ('Aaron', 'Eckhart');

-- For movie 4: Forrest Gump
insert into actors (actor_first_name, actor_last_name) values ('Tom', 'Hanks');
insert into actors (actor_first_name, actor_last_name) values ('Robin', 'Wright');
insert into actors (actor_first_name, actor_last_name) values ('Gary', 'Sinise');

-- For movie 5: The Lord of the Rings: The Fellowship of the Ring
insert into actors (actor_first_name, actor_last_name) values ('Elijah', 'Wood');
insert into actors (actor_first_name, actor_last_name) values ('Ian', 'McKellen');
insert into actors (actor_first_name, actor_last_name) values ('Viggo', 'Mortensen');

-- For movie 6: Pulp Fiction
insert into actors (actor_first_name, actor_last_name) values ('John', 'Travolta');
insert into actors (actor_first_name, actor_last_name) values ('Samuel L.', 'Jackson');
insert into actors (actor_first_name, actor_last_name) values ('Uma', 'Thurman');

-- For movie 7: Fight Club
insert into actors (actor_first_name, actor_last_name) values ('Brad', 'Pitt');
insert into actors (actor_first_name, actor_last_name) values ('Edward', 'Norton');
insert into actors (actor_first_name, actor_last_name) values ('Helena', 'Bonham Carter');

-- For movie 8: Inception
insert into actors (actor_first_name, actor_last_name) values ('Leonardo', 'DiCaprio');
insert into actors (actor_first_name, actor_last_name) values ('Joseph', 'Gordon-Levitt');
insert into actors (actor_first_name, actor_last_name) values ('Ellen', 'Page');

-- For movie 9: The Matrix
insert into actors (actor_first_name, actor_last_name) values ('Keanu', 'Reeves');
insert into actors (actor_first_name, actor_last_name) values ('Laurence', 'Fishburne');
insert into actors (actor_first_name, actor_last_name) values ('Carrie-Anne', 'Moss');

-- For movie 10: Star Wars: Episode IV - A New Hope
insert into actors (actor_first_name, actor_last_name) values ('Mark', 'Hamill');
insert into actors (actor_first_name, actor_last_name) values ('Harrison', 'Ford');
insert into actors (actor_first_name, actor_last_name) values ('Carrie', 'Fisher');

-- adding actors to cast
INSERT INTO movie_cast (actor_id, movie_id, roles) 
VALUES (1, 10, 'Linda Johnson');
INSERT INTO movie_cast (actor_id, movie_id, roles) 
VALUES (2, 9, 'Sarah Peterson');
INSERT INTO movie_cast (actor_id, movie_id, roles) 
VALUES (3, 8, 'David Lee');
INSERT INTO movie_cast (actor_id, movie_id, roles) 
VALUES (4, 7, 'John Smith');
INSERT INTO movie_cast (actor_id, movie_id, roles) 
VALUES (5, 6, 'Julie White');
INSERT INTO movie_cast (actor_id, movie_id, roles) 
VALUES (6, 5, 'Jessica Miller');
INSERT INTO movie_cast (actor_id, movie_id, roles) 
VALUES (7, 4, 'Thomas Brown');
INSERT INTO movie_cast (actor_id, movie_id, roles) 
VALUES (8, 3, 'Brian Davis');
INSERT INTO movie_cast (actor_id, movie_id, roles) 
VALUES (9, 2, 'Michael Johnson');
INSERT INTO movie_cast (actor_id, movie_id, roles) 
VALUES (10, 1, 'Emily Jones');

