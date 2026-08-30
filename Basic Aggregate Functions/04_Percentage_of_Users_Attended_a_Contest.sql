-- Problem: Percentage of Users Attended a Contest
-- Problem ID: 1633
-- Difficulty: Easy
-- Topics: CROSS JOIN, COUNT, DISTINCT, ROUND, GROUP BY, ORDER BY


-- Select the contest ID and calculate the percentage of registered users.
SELECT r.contest_id,
       ROUND(COUNT(DISTINCT r.user_id) / COUNT(DISTINCT u.user_id) * 100, 2) AS percentage

-- Get all users from the Users table.
FROM Users u

-- Create every possible user-contest combination.
CROSS JOIN Register r

-- Group the results by contest.
GROUP BY r.contest_id

-- Sort by percentage in descending order, then by contest ID.
ORDER BY percentage DESC, contest_id;