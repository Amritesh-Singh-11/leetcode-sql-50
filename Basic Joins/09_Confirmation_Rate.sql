-- Problem: Confirmation Rate
-- Problem ID: 1934
-- Difficulty: Medium
-- Topics: LEFT JOIN, IF, SUM, COUNT, ROUND, GROUP BY


-- Select the user ID and calculate their confirmation rate.
SELECT s.user_id,

-- Count confirmed actions and divide by the total number of actions.
ROUND(SUM(IF(c.action = 'confirmed', 1, 0)) / COUNT(*), 2) AS confirmation_rate

-- Get all users from the Signups table.
FROM Signups s

-- Include users even if they have no confirmation records.
LEFT JOIN Confirmations c

-- Match confirmations with their corresponding user.
ON s.user_id = c.user_id

-- Calculate the confirmation rate separately for each user.
GROUP BY s.user_id;