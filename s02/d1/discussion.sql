-- To start MariaDB Server: mysql -u root

-- SQL is case insensitive, but to easily identify queries we usually use UPPERCASE.

-- Lists down the databases inside the DBMS

SHOW DATABASES;

-- Create a database

CREATE DATABASE music_db;

-- Remove specific database
-- be careful on dropping a database, it will just proceed with the query, without any confirmation
DROP DATABASE music_db;

-- select database
USE music_db;

-- create tables
-- table columns have the following format:
	-- [column_name][data_type][other_options]
	-- id INT NOT AUTO_INCREMENT: "Integer" value that cannot be "null" (required) and it will "increment" when a user is created.
	-- VARCHAR(50) - Variable Character, The storage size of this datatype is equal to the actual length of the entered strings in bytes. 50 is used to set the character limit.
CREATE TABLE users(
	id INT NOT NULL AUTO_INCREMENT,
	username VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL,
	full_name VARCHAR(50) NOT NULL,
	contact_number VARCHAR(50) NOT NULL,
	email VARCHAR(50),
	address VARCHAR(50),
	PRIMARY KEY (id)
);

show tables;


/*
    mini-activity: 5 mins
        1. create a table for artists
        2. artists should have an id 
        3. artists is required to have a name with 50 character limits
        4. assign the primary key to its id
        5. send a screenshot of your terminal in the batch hangouts.
*/
CREATE TABLE artists(
	id INT NOT NULL AUTO_INCREMENT,
	artist_name VARCHAR(50) NOT NULL,
	artist_password VARCHAR(50) NOT NULL,
	artist_fname VARCHAR(50) NOT NULL,
	artist_contact_number VARCHAR(50) NOT NULL,
	artist_email VARCHAR(50),
	artist_address VARCHAR(50),
	PRIMARY KEY (id)
);

DROP TABLE artists;
-- correct answer

CREATE TABLE artists(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

-- Check the information about the table
/*
Syntax: 
	DESCRIBE <table_name>
*/
DESCRIBE artists;

/*
When to create a constraints?
(Foreign Key Constraints)

- If the relationship is one-to-many, "foreign key" column is added in the "many" entity/table. 

- If the relationship is one-to-one, "primary key" of the parent row is added as "foreign key" of the child row

- If a linking table exists, linking table is created for the many-to-many relationship and a foreign key for both tables/entities is added
*/

/*
DATE & TIME FORMAT IN SQL
DATE refers to YYYY-MM-DD
TIME refers to the HH:MM:SS
DATETIME refers to YYYY-MM-DD HH:MM:SS
*/

/*
CONSTRAINTS: use to specify the rules for the data table, this is an optional field, but we use this to identify the FOREIGN KEY.

FOREIGN KEY: 
artist_id


FOREIGN KEY
-is used to prevent actions that will destroy links between tables

REFERENCES
is a field that refers to the primary key of another table

ON UPDATE CASCADE
if the parent row is changed, the child row will also reflect that change

ON DELETE RESTRICT
you can't delete a given parent row if a child row 

*/

CREATE TABLE albums(
	id INT NOT NULL AUTO_INCREMENT,
	album_title VARCHAR(50) NOT NULL,
	date_released DATE NOT NULL,
	artist_id INT NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_albums_artist_id
		FOREIGN KEY (artist_id) REFERENCES artists(id)
		ON UPDATE CASCADE
		ON DELETE RESTRICT

);



//*
    mini-activity: 10 mins
    1. Create a table for songs
    2. Put a required auto increment id
    3. declare a song name with 50 char limit, this should be required
    4. declare a length with the data type time and it should be required
    5. declare a genre with 50 char limit, it should be required
    6. declare an integer as album id that should be required
    7. create a primary key referring to the id of the songs
    8. create a foreign key and name it fk_songs_album_id
        8.a this should be referred to the album id
        8.b it should have a cascaded update and restricted delete
    9. run create table songs in the terminal. 
    10. send your output in Hangouts
*/
CREATE TABLE songs(
	id INT NOT NULL AUTO_INCREMENT,
	song_name VARCHAR(50) NOT NULL,
	song_length VARCHAR(50) NOT NULL,
	genre VARCHAR(50) NOT NULL,
	album_id INT NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_songs_album_id
		FOREIGN KEY (album_id) REFERENCES albums(id)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
);


DESCRIBE songs;

DROP TABLE songs;


correct answer:

CREATE TABLE songs(
	id INT NOT NULL AUTO_INCREMENT,
	song_name VARCHAR(50) NOT NULL,
	song_length TIME NOT NULL,
	genre VARCHAR(50) NOT NULL,
	album_id INT NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_songs_album_id
		FOREIGN KEY (album_id) REFERENCES albums(id)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
);


CREATE TABLE playlists (
	id INT NOT NULL AUTO_INCREMENT,
	user_id INT NOT NULL,
	datetime_created DATETIME NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_playlists_user_id
		FOREIGN KEY (user_id) REFERENCES users(id)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
);


CREATE TABLE playlists_songs(
	id INT NOT NULL AUTO_INCREMENT,
	playlists_id INT NOT NULL,
	song_id INT NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_playlists_songs_playlist_id
		FOREIGN KEY (playlists_id) REFERENCES playlists(id)
		ON UPDATE CASCADE
		ON DELETE RESTRICT,
	CONSTRAINT fk_playlists_songs_song_id
		FOREIGN KEY (song_id) REFERENCES songs(id)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
);

DESCRIBE playlists_songs;