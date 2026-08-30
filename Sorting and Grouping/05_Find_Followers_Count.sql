-- Problem: Find Followers Count
-- Problem ID: 1729
-- Difficulty: Easy
-- Topics: COUNT, GROUP BY, ORDER BY


-- Select the user ID and count their followers.
SELECT user_id, COUNT(follower_id) AS followers_count

-- Get the data from the Followers table.
FROM Followers

-- Calculate the follower count separately for each user.
GROUP BY user_id

-- Sort the results by user ID in ascending order.
ORDER BY user_id ASC;