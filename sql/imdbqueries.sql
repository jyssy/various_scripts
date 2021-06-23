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

union 

-- Cast FB Query 13