-- Q1
 SELECT Title FROM movies 

--  Q2
 SELECT Rating FROM movies 

--  Q3
SELECT Rating FROM movies WHERE Rating IS NULL 

-- Q4
SELECT Movie FROM `movietheaters` WHERE Movie IS NULL

-- Q5
SELECT * FROM `movietheaters` LEFT JOIN movies ON movietheaters.Movie = movies.Code

-- Q6
SELECT *
   FROM movietheaters INNER JOIN Movies ON movietheaters.Movie = movies.Code;

-- Q7
-- Q8
INSERT INTO movies(Title,Rating) VALUES('One, Two, Three',NULL);

-- Q9
UPDATE `movies` SET `Rating`='G' WHERE Rating IS NULL

-- Q10
