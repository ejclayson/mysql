USE music_db;
SHOW TABLES;
SELECT * FROM albums;
SELECT * FROM artists;
SELECT * FROM songs;
/* 
-- MySQL Advance Queries and Joints
[SECTION] Add new records
-- Add 5 artists, at least 2 albums each, 1-2 songs per album

-- 5 artists
    Taylor Swift
    Lady Gaga
    Justin Bieber
    Ariana Grande
    Bruno Mars
 */


DESCRIBE artists;
INSERT INTO artists (name) VALUES ("Psy");
INSERT INTO artists (name) VALUES ("Rivermaya");
INSERT INTO artists (name) VALUES ("Taylor Swift");
INSERT INTO artists (name) VALUES ("Lady Gaga");
INSERT INTO artists (name) VALUES ("Justin Bieber");
INSERT INTO artists (name) VALUES ("Ariana Grande");
INSERT INTO artists (name) VALUES ("Bruno Mars");

DESCRIBE albums;
/* 
MariaDB [music_db]> DESCRIBE albums;
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| id            | int(11)     | NO   | PRI | NULL    | auto_increment |
| album_title   | varchar(50) | NO   |     | NULL    |                |
| date_released | date        | NO   |     | NULL    |                |
| artist_id     | int(11)     | NO   | MUL | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
4 rows in set (0.014 sec)
 */
DESCRIBE songs;
/* 
MariaDB [music_db]> DESCRIBE songs;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| id          | int(11)     | NO   | PRI | NULL    | auto_increment |
| song_name   | varchar(50) | NO   |     | NULL    |                |
| song_length | time        | NO   |     | NULL    |                |
| genre       | varchar(50) | NO   |     | NULL    |                |
| album_id    | int(11)     | NO   | MUL | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+
5 rows in set (0.016 sec)
 */

 /* 
 MariaDB [music_db]> SELECT * FROM artists;
+----+---------------+
| id | name          |
+----+---------------+
|  1 | Psy           |
|  2 | Rivermaya     |
|  3 | Taylor Swift  |
|  4 | Lady Gaga     |
|  5 | Justin Bieber |
|  6 | Ariana Grande |
|  7 | Bruno Mars    |
+----+---------------+
7 rows in set (0.000 sec)
  */

  /* 
  Insert the following records in their respective tables
      -- Artist: Taylor Swift
        -- Album: Fearless 2008-11-11 
            -- Songs:
                -- Fearless, 402, "Pop Rock" 
                -- Love Story, 355, "Country Pop"
        -- Album: Red, 2012-10-22 
            -- Songs:
                -- State of Grace, 455, "Rock, Alternative Rock, Arena Rock"
                -- Red, 341, "Country"
   */
SELECT * FROM artists;
 INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Fearless", "2008-11-11", 3);
 SELECT * FROM albums;
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Fearless", 402, "Pop Rock", 3);
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Love Story", 355, "Country Pop", 3);

 INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Red", "2012-10-22", 3);
 SELECT * FROM albums;
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("State of Grace", 455, "Rock, Alternative Rock, Arena Rock", 4);
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Red", 341, "Country", 4);


/* 
Insert the following records in their respective tables

    -- Artist: Lady Gaga
        -- Album: A Star Is Born, 2018-10-05 
            -- Songs:
                -- Black Eyes, 304, "Rock and Roll" 
                -- Shallow, 336, "Country, Rock, Folk Rock"
        -- Album: Born This Way, 2011-05-23 
            -- Song: Born This Way, 420, "Electropop"
 */
 SELECT * FROM artists;
 INSERT INTO albums (album_title, date_released, artist_id) VALUES ("A Star Is Born", "2018-10-05", 4);
 SELECT * FROM albums;
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Black Eyesy", 304, "Rock and Roll", 5);
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Shallow", 336, "Country, Rock, Folk Rock", 5);

 INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Born This Way", "2011-05-23", 4);
 SELECT * FROM albums;
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Born This Way", 420, "Electropop", 6);



/* 
Insert the following records in their respective tables

 -- Artist: Justin Bieber
        -- Album: Purpose, 2015-11-13 
            -- Song: Sorry, 320, "Dancehall-poptropical Housemoombahton"
        -- Album: Believe, 2012-06-15 
            -- Song: Boyfriend, 252, "Pop"
 */
 INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Purpose", "2015-11-13", 5);
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Sorry", 320, "Dancehall-poptropical Housemoombahto", 7);

 INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Believe", "2012-06-15", 5);
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Boyfriend", 252, "pop", 8);



 /* 
 Insert the following records in their respective tables

    -- Artist: Ariana Grande
        -- Album: Dangerous Woman, 2016-05-20 
            -- Song: Into You, 405, "EDM House"
        -- Album: Thank U, Next, 2019-02-08  
            -- Song: Thank U, Next, 327, "Pop, R&B"

  */
SELECT * FROM artists;
  INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Dangerous Woman", "2016-05-20", 6);
  SELECT * FROM albums;
  INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Into You", 405, "EDM House", 7);

  INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Thank U, Next", "2019-02-08", 6);
  SELECT * FROM albums;
  INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Thank U, Next", 327, "Pop, R&B", 8);

/* 
Insert the following records in their respective tables

    -- Artist: Bruno Mars
        -- Album: 24k Magic, 2016-11-18 
            -- Song: 24k Magic, 346, "Funk, Disco, R&B"
        -- ALbum: Earth to Mars,2011-02-07 
            -- Song: Lost, 321, "Pop"
 */
 SELECT * FROM artists;

 INSERT INTO albums (album_title, date_released, artist_id) VALUES ("24k Magic", "2016-11-18", 7);
 SELECT * FROM albums;
INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("24k Magic", 346, "Funk, Disco, R&B", 9);

 INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Earth to Mars", "2011-02-07", 7);
 SELECT * FROM albums;
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Lost", 321, "Pop", 10);


 SELECT * FROM albums;
 SELECT * FROM songs;

 


DROP DATABASE music_db;
CREATE DATABASE music_db;
USE music_db;



SELECT * FROM artists;

INSERT INTO artists (name) VALUES ("Psy");
INSERT INTO artists (name) VALUES ("Rivermaya");
INSERT INTO artists (name) VALUES ("Taylor Swift");
INSERT INTO artists (name) VALUES ("Lady Gaga");
INSERT INTO artists (name) VALUES ("Justin Bieber");
INSERT INTO artists (name) VALUES ("Ariana Grande");
INSERT INTO artists (name) VALUES ("Bruno Mars");

SELECT * FROM albums;
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Psy 6", "2012-07-15", 1);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Trip", "1996-02-14", 2);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Red", "2012-10-22", 3);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Fearless", "2008-11-11", 3);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("A Star Is Born", "2018-10-05", 4);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Born This Way", "2011-05-23", 4);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Purpose", "2015-11-13", 5);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Believe", "2012-06-15", 5);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Dangerous Woman", "2016-05-20", 6);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Thank U, Next", "2019-02-08", 6);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("24k Magic", "2016-11-18", 7);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Earth to Mars", "2011-02-07", 7);



SELECT * FROM songs;
INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Gangname Style", 339, "K-POP", 1);
INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Kundiman", 424, "OPM", 2);
INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Fearless", 402, "Pop Rock", 3);
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Love Story", 355, "Country Pop", 3);
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("State of Grace", 455, "Rock, Alternative Rock, Arena Rock", 4);
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Red", 341, "Country", 4);
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Black Eyesy", 304, "Rock and Roll", 5);
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Shallow", 336, "Country, Rock, Folk Rock", 5);
INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Born This Way", 420, "Electropop", 6);
 INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Sorry", 320, "Dancehall-poptropical Housemoombahto", 7);
INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Into You", 405, "EDM House", 7);
INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Thank U, Next", 327, "Pop, R&B", 8);
INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Boyfriend", 252, "pop", 8);
INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("24k Magic", 346, "Funk, Disco, R&B", 9);
INSERT INTO songs (song_name, song_length, genre, album_id) VALUES ("Lost", 321, "Pop", 10);







 



 
 





/* 
[SECTION] Advanced Selects
-- exclude records
 */

SELECT * FROM songs WHERE id != 11;

/* 
[SECTION] Advanced Selects
-- Limit 
    Show only specific number of records
 */

SELECT * FROM songs LIMIT 5;

/* 
[SECTION] Advanced Selects
-- Greater than or equal /less than or equal (Comparison)
 */

SELECT * FROM songs WHERE id <= 11;
SELECT * FROM songs WHERE id >= 11;

/* 
[SECTION] Advanced Selects
-- Get specific records using OR
 */

SELECT * FROM songs WHERE id = 1 OR id = 5 OR id =9;


/* 
[SECTION] Advanced Selects
-- Get specific records using IN
-- a shorthand method for multiple OR conditions
 */

SELECT * FROM songs WHERE id IN(1, 5, 9);
SELECT * FROM songs WHERE genre IN("Pop", "K-Pop");


/* 
[SECTION] Advanced Selects
-- combining conditions
 */

 SELECT * FROM songs WHERE album_id = 4 AND id < 7;


 
/* 
[SECTION] Advanced Selects
-- Find Partial Matches
--  LIKE is used in a WHERE clause to search for a specified pattern in a column
-- there are two wildcards used in conjunction with LIKE.
-- (%) - represents zero, one, or multiple characters.
--  (_) - represents a single character.
 */

 SELECT * FROM songs WHERE song_name LIKE "%a"; -- start


 SELECT * FROM songs WHERE song_name LIKE "b%"; -- end

 SELECT * FROM songs WHERE song_name LIKE "bo%";

 SELECT * FROM songs WHERE song_name LIKE "%a%"; -- anywhere

SELECT * FROM albums WHERE date_released LIKE "____-__-__"; -- anywhere

SELECT * FROM albums WHERE date_released LIKE "201_-0_-0_"; -- anywhere

SELECT * FROM albums WHERE date_released LIKE "201_-__-__"; -- anywhere

SELECT * FROM songs WHERE genre LIKE "___";

/* 
sorting records (alphanumeric order: a-z / z-a)

 */

 SELECT * FROM songs ORDER BY song_name ASC;
 SELECT * FROM songs ORDER BY song_name DESC;
 SELECT * FROM songs ORDER BY song_name ASC LIMIT 5;


 /* 
 Getting distinct records
 eliminates duplicate rows and display a unique list of values
 
  */

SELECT genre FROM songs;
SELECT DISTINCT genre FROM songs;

/* 
[SECTION] Table Joins
This is used to retrieve data from multiple tables
This is performed whenever two or more tables are listed in a SQL statement

Visual Joins : https://joins.spathon.com/
 */

/* 
Inner Join (Join)

Two Tables:

SELECT * (or column_name) FROM table1_name JOIN table2_name ON table1_column_id_pk/fk = table2_column_id_pk/fk;

Multiple Tables:

SELECT * (or column_name) FROM table1_name JOIN table2_name ON table1_column_id_pk/fk = table2_column_id_pk/fk JOIN table3_name on table2_column_id_pk/fk = table3_column_id_pk/fk;

 */


--  combine artists and albums table
SELECT * FROM artists
    JOIN albums ON artists.id = albums.artist_id;
    /* 
    MariaDB [music_db]> SELECT * FROM artists
    ->     JOIN albums ON artists.id = albums.artist_id;
+----+---------------+----+-----------------+---------------+-----------+
| id | name          | id | album_title     | date_released | artist_id |
+----+---------------+----+-----------------+---------------+-----------+
|  1 | Psy           |  1 | Psy 6           | 2012-07-15    |         1 |
|  2 | Rivermaya     |  2 | Trip            | 1996-02-14    |         2 |
|  3 | Taylor Swift  |  3 | Red             | 2012-10-22    |         3 |
|  3 | Taylor Swift  |  4 | Fearless        | 2008-11-11    |         3 |
|  4 | Lady Gaga     |  5 | A Star Is Born  | 2018-10-05    |         4 |
|  4 | Lady Gaga     |  6 | Born This Way   | 2011-05-23    |         4 |
|  5 | Justin Bieber |  7 | Purpose         | 2015-11-13    |         5 |
|  5 | Justin Bieber |  8 | Believe         | 2012-06-15    |         5 |
|  6 | Ariana Grande |  9 | Dangerous Woman | 2016-05-20    |         6 |
|  6 | Ariana Grande | 10 | Thank U, Next   | 2019-02-08    |         6 |
|  7 | Bruno Mars    | 11 | 24k Magic       | 2016-11-18    |         7 |
|  7 | Bruno Mars    | 12 | Earth to Mars   | 2011-02-07    |         7 |
+----+---------------+----+-----------------+---------------+-----------+
12 rows in set (0.003 sec)
     */





    --  Combine more than two tables

    SELECT * FROM artists
        JOIN albums ON artists.id = albums.artist_id
        JOIN songs ON albums.id = songs.album_id;
/* 
MariaDB [music_db]> SELECT * FROM artists
    ->         JOIN albums ON artists.id = albums.artist_id
    ->         JOIN songs ON albums.id = songs.album_id;
+----+---------------+----+-----------------+---------------+-----------+----+----------------+-------------+--------------------------------------+----------+
| id | name          | id | album_title     | date_released | artist_id | id | song_name      | song_length | genre                                | album_id |
+----+---------------+----+-----------------+---------------+-----------+----+----------------+-------------+--------------------------------------+----------+
|  1 | Psy           |  1 | Psy 6           | 2012-07-15    |         1 |  1 | Gangname Style | 00:03:39    | K-POP                                |        1 |
|  2 | Rivermaya     |  2 | Trip            | 1996-02-14    |         2 |  2 | Kundiman       | 00:04:24    | OPM                                  |        2 |
|  3 | Taylor Swift  |  3 | Red             | 2012-10-22    |         3 |  3 | Fearless       | 00:04:02    | Pop Rock                             |        3 |
|  3 | Taylor Swift  |  3 | Red             | 2012-10-22    |         3 |  4 | Love Story     | 00:03:55    | Country Pop                          |        3 |
|  3 | Taylor Swift  |  4 | Fearless        | 2008-11-11    |         3 |  5 | State of Grace | 00:04:55    | Rock, Alternative Rock, Arena Rock   |        4 |
|  3 | Taylor Swift  |  4 | Fearless        | 2008-11-11    |         3 |  6 | Red            | 00:03:41    | Country                              |        4 |
|  4 | Lady Gaga     |  5 | A Star Is Born  | 2018-10-05    |         4 |  7 | Black Eyesy    | 00:03:04    | Rock and Roll                        |        5 |
|  4 | Lady Gaga     |  5 | A Star Is Born  | 2018-10-05    |         4 |  8 | Shallow        | 00:03:36    | Country, Rock, Folk Rock             |        5 |
|  4 | Lady Gaga     |  6 | Born This Way   | 2011-05-23    |         4 |  9 | Born This Way  | 00:04:20    | Electropop                           |        6 |
|  5 | Justin Bieber |  7 | Purpose         | 2015-11-13    |         5 | 10 | Sorry          | 00:03:20    | Dancehall-poptropical Housemoombahto |        7 |
|  5 | Justin Bieber |  7 | Purpose         | 2015-11-13    |         5 | 11 | Into You       | 00:04:05    | EDM House                            |        7 |
|  5 | Justin Bieber |  8 | Believe         | 2012-06-15    |         5 | 12 | Thank U, Next  | 00:03:27    | Pop, R&B                             |        8 |
|  5 | Justin Bieber |  8 | Believe         | 2012-06-15    |         5 | 13 | Boyfriend      | 00:02:52    | pop                                  |        8 |
|  6 | Ariana Grande |  9 | Dangerous Woman | 2016-05-20    |         6 | 14 | 24k Magic      | 00:03:46    | Funk, Disco, R&B                     |        9 |
|  6 | Ariana Grande | 10 | Thank U, Next   | 2019-02-08    |         6 | 15 | Lost           | 00:03:21    | Pop                                  |       10 |
+----+---------------+----+-----------------+---------------+-----------+----+----------------+-------------+--------------------------------------+----------+
15 rows in set (0.004 sec)
 */



-- Specify columns to be included in the Join table.
SELECT artists.name, albums.album_title, songs.song_name FROM artists
    JOIN albums ON artists.id = albums.artist_id
    JOIN songs ON albums.id = songs.album_id;

/* 
MariaDB [music_db]> SELECT artists.name, albums.album_title, songs.song_name FROM artists
    ->     JOIN albums ON artists.id = albums.artist_id
    ->     JOIN songs ON albums.id = songs.album_id;
+---------------+-----------------+----------------+
| name          | album_title     | song_name      |
+---------------+-----------------+----------------+
| Psy           | Psy 6           | Gangname Style |
| Rivermaya     | Trip            | Kundiman       |
| Taylor Swift  | Red             | Fearless       |
| Taylor Swift  | Red             | Love Story     |
| Taylor Swift  | Fearless        | State of Grace |
| Taylor Swift  | Fearless        | Red            |
| Lady Gaga     | A Star Is Born  | Black Eyesy    |
| Lady Gaga     | A Star Is Born  | Shallow        |
| Lady Gaga     | Born This Way   | Born This Way  |
| Justin Bieber | Purpose         | Sorry          |
| Justin Bieber | Purpose         | Into You       |
| Justin Bieber | Believe         | Thank U, Next  |
| Justin Bieber | Believe         | Boyfriend      |
| Ariana Grande | Dangerous Woman | 24k Magic      |
| Ariana Grande | Thank U, Next   | Lost           |
+---------------+-----------------+----------------+
15 rows in set (0.003 sec)
 */





 -- Specify columns to be included in the Join table.
SELECT artists.name, albums.album_title, songs.song_name FROM artists
    JOIN albums ON artists.id = albums.artist_id
    JOIN songs ON albums.id = songs.album_id;


-- Insert another artist
INSERT INTO artists (name) VALUE ("Ed Sheeran");

SELECT * FROM artists;

-- Show artists without records on the right side of the joined table.
SELECT artists.name, albums.album_title FROM artists
    LEFT JOIN albums ON artists.id = albums.artist_id;




-- right join
SELECT artists.name, albums.album_title FROM artists
    RIGHT JOIN albums ON artists.id = albums.artist_id;


-- full outer join
SELECT artists.name, albums.album_title FROM artists 
    LEFT JOIN albums ON artists.id = albums.artist_id
    UNION
SELECT artists.name, albums.album_title FROM artists 
    RIGHT JOIN albums ON artists.id = albums.artist_id;


SELECT artists.name, albums.album_title FROM artists
    LEFT JOIN albums ON artists.id = albums.artist_id
    UNION
SELECT artists.name, albums.album_title FROM artists
    RIGHT JOIN albums ON artists.id = albums.artist_id;
