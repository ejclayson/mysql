mysql -u root

USE music_db;

/* 

-- MySQL CRUD Operations
-- [SECTION] Inserting A Record

-- SYNTAX : 

INSERT INTO table_name (column_nameA) VALUES (ValueA);

-- Artist Table

 */

DESCRIBE artists;

INSERT INTO artists (name) VALUES ("Psy");

INSERT INTO artists (name) VALUES ("Rivermaya");

SELECT * FROM artists;




DESCRIBE albums;

INSERT INTO albums (name) VALUES ("Rivermaya");

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Psy 6", "2012-07-15", 1);

SELECT * FROM albums;

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Trip", "1996-02-14", 2);



DESCRIBE songs;

INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Gangname Style", 339, "K-POP", 1);

SELECT * FROM songs;



/* 
MINI ACTIVITY

-- Mini-Activity:
    -- insert the following songs in the songs table:

        -- Song name: Kundiman
        -- Length: 5 mins 24 secs
        -- Genre: OPM
        -- Album: Kundiman

        -- Song name: Kisapmata
        -- Length: 4 mins 41 secs
        -- Genre: OPM
        -- Album: Kundiman

    -- Check if the songs are added.
    -- send your songs table in the batch hangouts

 */


 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Kundiman", 524, "OPM", 2);


 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Kisapmata", 441, "OPM", 2);

 /* 
 
 [SECTION] Selecting Records

 Syntax:

    shows the full table
    (*) means all columns will be shown in the selected table.
        SELECT * FROM table_name;
 
    shows the full table
        SELECT column_nameA, column_nameB FROM table_name;
 
  */

  SELECT * FROM songs;

--   Display only the title and genre of all the songs

-- song name and genre only
SELECT song_name, genre FROM songs;


-- album title and released only:
SELECT album_title, date_released FROM albums;

-- Display the title of all the OPM songs
-- "WHERE" clause is used to filter records and to extract only those records that fulfill a specific condition

SELECT song_name FROM songs WHERE genre = "OPM";



-- AND and OR keyword
    --  is used for multiple expressions in the WHERE clause

-- Display the title and length of the OPM Songs that are more than 4 minutes 30 secs
SELECT song_name, song_length FROM songs where song_length > 430 AND genre = "OPM";


/* 
[SECTION] Updating Records
Syntax:
    -- UPDATE table_name SET column_nameA = updated_valueA WHERE condition;

    -- Updated the length of Kundiman to 4 minutes 24 secs
 */

 UPDATE songs SET song_length = 424 WHERE song_name = "Kundiman";


 SELECT song_name, song_length FROM songs where song_length > 430 AND genre = "OPM";


 /* 
 [SECTION] Deleting Records

 soft delete instead of deleting directly

 soft delete / archiving

 note:
    Syntax:
        DELETE FROM table_name WHERE condition;

-- Removing the WHERE clause will remove all rows in the table

-- 
 
  */


--   Delete all OPM songs that are more than 4 minutes 30 secs

DELETE FROM songs where song_length > 430 AND genre = "OPM";

DELETE FROM songs where genre = "OPM" AND song_length > 430;

SELECT song_name, song_length FROM songs where song_length > 430 OR genre = "OPM";