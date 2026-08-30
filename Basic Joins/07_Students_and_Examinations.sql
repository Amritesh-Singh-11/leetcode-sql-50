-- Problem: Students and Examinations
-- Problem ID: 1280
-- Difficulty: Easy
-- Topics: CROSS JOIN, LEFT JOIN, COUNT, GROUP BY, ORDER BY


-- Select student details, subject name, and count the exams attended.
SELECT st.student_id, st.student_name, su.subject_name,
       COUNT(e.student_id) AS attended_exams

-- Get all students.
FROM Students st

-- Create every possible student-subject combination.
CROSS JOIN Subjects su

-- Include examination records for matching students and subjects.
LEFT JOIN Examinations e
ON st.student_id = e.student_id

-- Match the examination subject with the current subject.
AND su.subject_name = e.subject_name

-- Group the results by student and subject to count their exams.
GROUP BY st.student_id, st.student_name, su.subject_name

-- Sort the results first by student ID and then by subject name.
ORDER BY st.student_id, su.subject_name;