-- Problem: Queries Quality and Percentage
-- Problem ID: 1211
-- Difficulty: Easy
-- Topics: AVG, IF, ROUND, WHERE, GROUP BY


-- Select the query name and calculate quality and poor query percentage.
SELECT query_name,

-- Calculate the average of rating divided by position.
ROUND(AVG(rating / position), 2) AS quality,

-- Count queries with a rating below 3 and calculate their percentage.
ROUND(AVG(IF(rating < 3, 1, 0)) * 100, 2) AS poor_query_percentage

-- Get the data from the Queries table.
FROM Queries

-- Exclude records where the query name is NULL.
WHERE query_name IS NOT NULL

-- Calculate the results separately for each query.
GROUP BY query_name;