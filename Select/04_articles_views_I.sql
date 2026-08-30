-- Problem: Article Views I
-- Problem ID: 1148
-- Difficulty: Easy
-- Topics: DISTINCT, WHERE, ORDER BY


-- Select the author's ID and rename the column as 'id'.
SELECT DISTINCT author_id AS id

-- Get the data from the Views table.
FROM Views

-- Select rows where the author viewed their own article.
WHERE author_id = viewer_id

-- Sort the result by author ID.
ORDER BY author_id;