-- Problem: Not Boring Movies
-- Problem ID: 620
-- Difficulty: Easy
-- Topics: MOD, LOWER, LIKE, WHERE, ORDER BY


-- Select all columns because all movie details are required.
SELECT *

-- Get the data from the Cinema table.
FROM Cinema

-- Select movies with an odd-numbered ID.
WHERE id % 2 = 1

-- Exclude movies whose description is 'boring', ignoring letter case.
AND LOWER(description) NOT LIKE 'boring'

-- Sort the movies by rating from highest to lowest.
ORDER BY rating DESC;