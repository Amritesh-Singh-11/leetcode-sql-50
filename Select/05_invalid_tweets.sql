-- Problem: Invalid Tweets
-- Problem ID: 1683
-- Difficulty: Easy
-- Topics: String Functions, WHERE


-- Select the tweet ID because we need to identify invalid tweets.
SELECT tweet_id

-- Get the data from the Tweets table.
FROM Tweets

-- Select tweets whose content contains more than 15 characters.
WHERE CHAR_LENGTH(content) > 15;