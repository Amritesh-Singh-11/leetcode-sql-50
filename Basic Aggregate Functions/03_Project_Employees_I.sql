-- Problem: Project Employees I
-- Problem ID: 1075
-- Difficulty: Easy
-- Topics: LEFT JOIN, AVG, ROUND, GROUP BY


-- Select the project ID and calculate the average experience of its employees.
SELECT p.project_id, ROUND(AVG(e.experience_years), 2) AS average_years

-- Get project information from the Project table.
FROM Project p

-- Include all projects, even if no matching employee exists.
LEFT JOIN Employee e

-- Match each project with its assigned employee.
ON p.employee_id = e.employee_id

-- Calculate the average experience separately for each project.
GROUP BY p.project_id;