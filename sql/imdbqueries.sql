-- Testing Queries on an IMDB dataset

-- Looking at Cast FB Likes with certain criteria (for the next few)
-- Cast FB query 1

SELECT MovieNumber "Movie Number", Title "Title", Genre "Genre", Total_Reviews "Total Reviews"
FROM imdbtable
WHERE Cast_FB_Likes BETWEEN 17 AND 101
ORDER by MovieNumber;

-- Cast FB query 2

SELECT MovieNumber "Movie Number", Title "Title", Genre "Genre", Total_Reviews "Total Reviews", Gross_Revenue "Gross Revenue"
FROM imdbtable
WHERE Cast_FB_Likes BETWEEN 17 AND 101
AND Gross_Revenue >= 400000
ORDER by Gross_Revenue DESC;

-- Cast FB query 3

SELECT MovieNumber MovieNumber, Title Title, Genre Genre, Total_Reviews TotalReviews, Gross_Revenue GrossRevenue
FROM imdbtable
WHERE Cast_FB_Likes BETWEEN 21 AND 71
AND Gross_Revenue >= 550000
ORDER by Gross_Revenue DESC;

-- Cast FB query 4

SELECT Title Title, Genre Genre FROM imdbtable
WHERE MovieNumber!=1013
AND Cast_FB_Likes >= 45;

-- Cast FB Query 5

CREATE VIEW Movies
AS
Select Title, Director_Name, Cast_FB_Likes
FROM imdbtable;

-- Cast Fb Query 6

SELECT Title, Director_Name, Cast_FB_Likes FROM imdbtable
WHERE MovieNumber!=1013
AND Cast_FB_Likes >= 45;

-- Cast FB Query 7

SELECT Title, Director_Name, Cast_FB_Likes FROM imdbtable
WHERE MovieNumber!=1013
AND Cast_FB_Likes >= 45
AND Director_FB_Likes >= 32
ORDER BY MovieNumber ASC;

-- Cast FB Query 8

SELECT Title, Director_Name, Cast_FB_Likes FROM imdbtable
WHERE MovieNumber!=1013
AND Cast_FB_Likes >= 45
OR Director_FB_Likes >= 32
ORDER BY MovieNumber ASC;

-- Cast FB Query 9

SELECT Title, Director_Name, Cast_FB_Likes FROM imdbtable
WHERE MovieNumber!=1013
AND (Cast_FB_Likes >= 75
OR Director_FB_Likes >= 59)
ORDER BY MovieNumber ASC;

-- Cast FB Query 9

SELECT Title, Director_Name, Cast_FB_Likes FROM imdbtable
WHERE MovieNumber IS NOT NULL;

-- Cast FB Query 10

SELECT Title, Director_Name, Cast_FB_Likes FROM imdbtable
WHERE Director_Name like '%Tim%';

-- Cast FB Query 10

SELECT Title, Director_Name, Cast_FB_Likes FROM imdbtable
WHERE Director_Name like 'Tim_B%';

-- Cast FB Query 11

Select count(Cast_FB_Likes) from imdbtable;

-- Cast FB Query 11

SELECT SUM(Cast_FB_Likes) from imdbtable;
SELECT MIN(Cast_FB_Likes) from imdbtable;
SELECT MAXCast_FB_Likes) from imdbtable;
SELECT AVG(Cast_FB_Likes) from imdbtable;

-- Cast FB Query 12

UNION

-- Varied Queries (separated by spaces)

Select COUNT(DISTINCT(Director_Name)) from imdbtable;


SELECT Title, MyGenre from GenreTable
WHERE Myrating>=55;


SELECT Title, MyGenre from GenreTable
WHERE Director_Name IN ("Fritz Lang", "Tim Burton");


INSERT INTO imdbtable (Title, Genre, Director_Name)
VALUES ("Wander", "Crime", "April Mullen")

-- IS NULL
-- vs.
-- IS NOT NULL


UPDATE imdbtable
SET Director_FB_Likes = 777, Cast_FB_Likes= 555
WHERE MovieNumber = 1007;

DELETE FROM GenreTable
WHERE Director_Name = "Woody Allen"
-- UNION                            UNION did not seem to work in this scenario (maybe a SQLite issue)
DELETE FROM imdbtable
WHERE Director_Name = "Woody Allen";


DELETE FROM imdbtable; -- Would just delete all the rows in the table, but would keep the table name. Maybe the next step would be to insert data back into it (fresh data, or something)


SELECT TOP -- info here: https://www.w3schools.com/sql/sql_top.asp
-- not all DBMSs use TOP
-- MYSQL SYNTAX:
-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- LIMIT number;
SELECT * FROM GenreTable
LIMIT 21;
-- OR
SELECT * FROM imdbtable
WHERE Genre="Comedy"
LIMIT 14;


SELECT MIN(Cast_FB_Likes)
FROM imdbtable
WHERE Genre = "Comedy"
AND Cast_FB_Likes != 0;


SELECT AVG(Cast_FB_Likes)
FROM imdbtable
WHERE Genre = "Comedy"
AND Cast_FB_Likes >= 5;


SELECT MAX(Cast_FB_Likes)
FROM imdbtable
WHERE Genre = "Comedy"
AND Cast_FB_Likes < 333;


SELECT COUNT(Cast_FB_Likes)
FROM imdbtable
WHERE Genre = "Comedy"
AND Cast_FB_Likes < 333;


LIKE -- Note: MS Access uses an asterisk (*) instead of the percent sign (%), and a question mark (?) instead of the underscore (_).
-- according to: https://www.w3schools.com/sql/sql_like.asp

SELECT *
FROM imdbtable
WHERE Genre = "Horror"
AND Director_Name LIKE "n%";


SELECT *
FROM imdbtable
WHERE Genre = "Action"
AND Director_Name LIKE "%an%";

-- Wildcards: https://www.w3schools.com/sql/sql_wildcards.asp
-- Using the [charlist] Wildcard

SELECT *
FROM imdbtable
WHERE Director_Name IN ("Tim Burton", "Fritz Lang")
AND Director_FB_Likes > 22;


SELECT *
FROM imdbtable
WHERE Director_Name NOT IN ("Tim Burton", "Fritz Lang")
AND Director_FB_Likes > 150;


-- this should be zero result, and in fact is
SELECT *
FROM imdbtable
WHERE Director_Name NOT IN (SELECT Director_Name FROM GenreTable);


-- BETWEEN "The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates. The BETWEEN operator is inclusive: begin and end values are included"
-- https://www.w3schools.com/sql/sql_between.asp


SELECT Title
FROM imdbtable
WHERE Director_Name BETWEEN "Elia Kazan" AND "Orson Welles"
AND Director_FB_Likes > 25
ORDER BY Director_Name;


SELECT MyGenre
FROM imdbtable i, GenreTable t
WHERE i.MovieNumber=1015 AND i.MovieNumber=t.MovieNumber;


-- INNER JOINS: https://www.w3schools.com/sql/sql_join.asp
SELECT imdbtable.Title, GenreTable.MyGenre, imdbtable.Genre
FROM imdbtable
INNER JOIN GenreTable ON imdbtable.Director_Name=GenreTable.Director_Name;

-- UNION https://www.w3schools.com/sql/sql_union.asp

-- Group By
SELECT Title, MyGenre
FROM GenreTable
WHERE Director_Name != "Tim Burton"
GROUP BY Title
ORDER BY Title;


SELECT Title, Genre, Count(MyGenre)
FROM GenreTable
WHERE Director_Name != "Tim Burton"
GROUP BY Genre
ORDER BY Title;

-- HAVING: https://www.w3schools.com/sql/sql_having.asp
"The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions"
-- HAVING Syntax
-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name(s)
-- HAVING condition
-- ORDER BY column_name(s)

SELECT Genre, Count(MyGenre)
FROM GenreTable
GROUP BY Genre
HAVING COUNT(MyGenre) > 4;

-- EXISTS
"The EXISTS operator is used to test for the existence of any record in a subquery"
"The EXISTS operator returns TRUE if the subquery returns one or more records"

-- ANY ALL: https://www.w3schools.com/sql/sql_any_all.asp
"The ANY and ALL operators allow you to perform a comparison between a single column value and a range of other values"

-- SWL CREATE, DROP, etc, DB: https://www.w3schools.com/sql/sql_create_db.asp / https://www.w3schools.com/sql/sql_create_table.asp
CREATE TABLE movmusic (MovieNumber INT, Title CHAR, Style CHAR);

-- SQL Data types: https://www.w3schools.com/sql/sql_datatypes.asp
ALTER TABLE movmusic
ADD Composer varchar(255);

ALTER TABLE imdbtable
DROP COLUMN Lead_Actor_FB_Likes

-- SQL Primary Key: https://www.w3schools.com/sql/sql_primarykey.asp
-- SQL Foreign Key: https://www.w3schools.com/sql/sql_foreignkey.asp

SELECT Genre, COUNT(MyGenre)
FROM GenreTable
GROUP BY Genre;

"I have been using SQLite browser for these queries, have tried to use MySQL Workbench, but ran into some bug that involved the import of CSV data into tables, which means that it is basically useless to me. So, I am using SQLite for he time being on the windows machine"

-- HUGE CROSS-JOIN
SELECT *
FROM imdbtable i, genretable g -- NOT useful

-- INNER JOINS

SELECT MyGenre, RandomWord
FROM imdbtable i, genretable g
WHERE i.MovieNumber=g.MoNu
AND Cast_FB_Likes > 5500
ORDER BY MyGenre ASC;


SELECT RandomWord, Director_Name, MyGenre
FROM imdbtable i, genretable g
WHERE i.MovieNumber=g.MoNu
AND (i.Cast_FB_Likes > 2021
AND i.Director_Name LIKE "_e%")
ORDER BY g.RandomWord;


-- FUNNY
SELECT g.Title, g.MyGenre, g.GenreF
from genretable g
LEFT JOIN genretable e
ON g.MoNu=e.MoNu
ORDER BY e.Title;

-- Is the same as...

SELECT g.Title, g.MyGenre, g.GenreF
from genretable g
ORDER BY g.Title;

-- This is because the natire of the tables is not complex enough to have these variations. Plus, there is no NULL data

SELECT Title 
FROM imdbtable t
WHERE t.Release_Date LIKE "19%";


SELECT Title 
FROM imdbtable t
WHERE t.Release_Date LIKE "201%";


-- FUNNY AVERAGE RESULTS FROM AVG 2002.78604026846 (haha)
SELECT AVG(Release_Date)
FROM imdbtable;


UPDATE genretable
SET RandomWord = "randohaha"
WHERE GenreNumber = 2030;


-- INSERTING / DELETING TEST DATA: 
INSERT INTO genretable (GenreNumber, Title, MoNu, Myrating, GenreF, MyGenre, Dname, RandomWord)
VALUES (7332, "Zylophone Title", 6332, 64, "Horrorf", "whippowill", "Weedy Wallen", "zerf");


DELETE from genretable
WHERE GenreNumber=7332;


-- FROM MySQL WorkBench below unless noted (I want to get to know this tool better):
SELECT * FROM imdb.imdbtable
WHERE `Cast FB Likes` >= 34
AND (
`Director Name` = "Woody Allen" 
OR `Director Name` = "Frank Capra"
);

-- Gets all the users associated with the MySQL db
SELECT * 
FROM mysql.user;

-- various checks on tables
CHECK TABLE imdb.imdbtable;
ANALYZE TABLE imdb.imdbtable;
OPTIMIZE TABLE imdb.imdbtable;

-- SHOW ENGINE for MySQL
SHOW ENGINE innodb STATUS;

-- BACK TO SQLLite for the time being (more on MySQL Workbench at a later time)

-- Experimenting with EXPLAIN
EXPLAIN SELECT MTitle, MGenre
FROM musicgenre
where MoN = 1013;


EXPLAIN SELECT MTitle, Director_Name, GenreF , MGenre
FROM musicgenre
INNER JOIN genretable ON musicgenre.MoN=genretable.MoNu
LEFT JOIN imdbtable ON musicgenre.MoN=imdbtable.MovieNumber
WHERE Cast_FB_Likes >= 200;



EXPLAIN SELECT MTitle, Director_Name, GenreF , MGenre, MGenreFBLikes
FROM musicgenre
JOIN genretable ON musicgenre.MoN=genretable.MoNu
LEFT JOIN imdbtable ON musicgenre.MoN=imdbtable.MovieNumber
WHERE (Cast_FB_Likes >= 478
AND Release_Date LIKE "1989%");

































