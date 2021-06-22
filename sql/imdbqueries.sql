-- Testing Queries on an IMDB dataset

-- Looking at Cast FB Likes with certain criteria (for the next few)
-- Cast FB query 1

SELECT MovieNumber "Movie Number", Title "Title", Genre "Genre", Total_Reviews "Total Reviews"
FROM imdbtable
WHERE Cast_FB_Likes BETWEEN 17 AND 101
ORDER by MovieNumber;

-- Cast FB query 2

select MovieNumber "Movie Number", Title "Title", Genre "Genre", Total_Reviews "Total Reviews", Gross_Revenue "Gross Revenue"
FROM imdbtable
WHERE Cast_FB_Likes BETWEEN 17 AND 101
AND Gross_Revenue >= 400000
ORDER by Gross_Revenue DESC;

-- Cast FB query 3

