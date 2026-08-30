-- Problem: Big Countries
-- Problem ID: 595
-- Difficulty: Easy
-- Topics: WHERE, OR, UNION


-- Method 1: Using UNION
-- Select the required columns.
SELECT name, population, area

-- Get the data from the World table.
FROM World

-- Select countries with an area of at least 3,000,000.
WHERE area >= 3000000

-- Combine this result with the second query.
UNION

-- Select the required columns.
SELECT name, population, area

-- Get the data from the World table.
FROM World

-- Select countries with a population of at least 25,000,000.
WHERE population >= 25000000;


-- Primary Solution: Using OR
-- Select the required columns.
SELECT name, population, area

-- Get the data from the World table.
FROM World

-- Select countries satisfying either of the two conditions.
WHERE area >= 3000000
   OR population >= 25000000;