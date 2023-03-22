-- Drop the movies database if it exists and create a new one
DROP DATABASE IF EXISTS movies;
CREATE DATABASE IF NOT EXISTS movies;

-- Switch to the movies database
USE movies;

-- Create the movies table
DROP TABLE IF EXISTS movies;
CREATE TABLE IF NOT EXISTS movies (
    movie_id INT AUTO_INCREMENT,
    movie_title VARCHAR(100) NOT NULL,
    release_date DATE DEFAULT CURRENT_TIMESTAMP,
    runtime INT NOT NULL,
    PRIMARY KEY (movie_id)
);

-- Create the directors table
DROP TABLE IF EXISTS directors;
CREATE TABLE IF NOT EXISTS directors (
    dir_id INT AUTO_INCREMENT,
    dir_first_name VARCHAR(50) NOT NULL,
    dir_last_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (dir_id)
);

-- Create the movie_directors table
DROP TABLE IF EXISTS movie_directors;
CREATE TABLE IF NOT EXISTS movie_directors (
    dir_id INT NOT NULL,
    movie_id INT NOT NULL,
    FOREIGN KEY (dir_id) REFERENCES directors (dir_id),
    FOREIGN KEY (movie_id) REFERENCES movies (movie_id)
);

-- Create the genres table
DROP TABLE IF EXISTS genres;
CREATE TABLE IF NOT EXISTS genres (
    gen_id INT AUTO_INCREMENT,
    gen_title VARCHAR(50) NOT NULL,
    PRIMARY KEY (gen_id)
);

-- Create the movie_genres table
DROP TABLE IF EXISTS movie_genres;
CREATE TABLE IF NOT EXISTS movie_genres (
    movie_id INT NOT NULL,
    gen_id INT NOT NULL,
    FOREIGN KEY (gen_id) REFERENCES genres (gen_id),
    FOREIGN KEY (movie_id) REFERENCES movies (movie_id)
);

-- Create the actors table
DROP TABLE IF EXISTS actors;
CREATE TABLE IF NOT EXISTS actors (
    actor_id INT AUTO_INCREMENT,
    actor_first_name VARCHAR(50) NOT NULL,
    actor_last_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (actor_id)
);

-- Create the movie_cast table
DROP TABLE IF EXISTS movie_cast;
CREATE TABLE IF NOT EXISTS movie_cast (
    actor_id INT NOT NULL,
    movie_id INT NOT NULL,
    roles VARCHAR(50) NOT NULL,
    FOREIGN KEY (actor_id) REFERENCES actors (actor_id),
    FOREIGN KEY (movie_id) REFERENCES movies (movie_id)
);

-- Create the audit table
DROP TABLE IF EXISTS audit;
CREATE TABLE IF NOT EXISTS actors_audit(
    contact_id INT,
    deleted_date DATE,
    deleted_by VARCHAR(20)
);
