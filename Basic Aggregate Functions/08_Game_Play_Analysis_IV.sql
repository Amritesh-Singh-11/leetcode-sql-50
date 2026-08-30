-- Problem: Game Play Analysis IV
-- Problem ID: 550
-- Difficulty: Medium
-- Topics: LEFT JOIN, Subquery, MIN, COUNT, DISTINCT, DATE_SUB, GROUP BY


-- Calculate the fraction of players who logged in the day after their first login.
SELECT ROUND(
    COUNT(DISTINCT T.player_id) / COUNT(DISTINCT a.player_id),
    2
) AS fraction

-- Use Activity as the main table to get all players.
FROM Activity a

-- Create a subquery to find the first login date of each player.
LEFT JOIN (
    
    -- Select each player and their earliest activity date.
    SELECT player_id, MIN(event_date) AS FLD
    
    -- Get activity records from the Activity table.
    FROM Activity
    
    -- Find the first login date separately for each player.
    GROUP BY player_id

) T

-- Match each player with their first login date.
ON a.player_id = T.player_id

-- Check if the activity date is exactly one day after the first login.
AND DATE_SUB(a.event_date, INTERVAL 1 DAY) = T.FLD;