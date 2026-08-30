-- Problem: Number of Unique Subjects Taught by Each Teacher
-- Problem ID: 2356
-- Difficulty: Easy
-- Topics: COUNT, DISTINCT, GROUP BY


-- Select the teacher ID and count their unique subjects.
SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt

-- Get the data from the Teacher table.
FROM Teacher

-- Calculate the count separately for each teacher.
GROUP BY teacher_id;