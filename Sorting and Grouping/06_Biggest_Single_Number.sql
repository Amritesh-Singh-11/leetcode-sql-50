-- Problem: Biggest Single Number
-- Problem ID: 619
-- Difficulty: Easy
-- Topics: GROUP BY, HAVING, MAX, Subquery


-- Select the largest number among the numbers that appear only once.
SELECT MAX(T.num) AS num

-- Use the filtered numbers from the subquery.
FROM (

    -- Select each unique number.
    SELECT num

    -- Get the data from the MyNumbers table.
    FROM MyNumbers

    -- Group identical numbers together.
    GROUP BY num

    -- Keep only numbers that appear exactly once.
    HAVING COUNT(*) = 1

) T;