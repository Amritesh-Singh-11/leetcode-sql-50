-- Problem: Classes More Than 5 Students
-- Problem ID: 596
-- Difficulty: Easy
-- Topics: GROUP BY, HAVING, COUNT


-- Select the class name.
SELECT class

-- Get the data from the Courses table.
FROM Courses

-- Group students belonging to the same class.
GROUP BY class

-- Keep only classes with at least 5 students.
HAVING COUNT(student) >= 5;