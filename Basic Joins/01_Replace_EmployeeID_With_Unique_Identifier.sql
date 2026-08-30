-- Problem: Replace Employee ID With The Unique Identifier
-- Problem ID: 1378
-- Difficulty: Easy
-- Topics: LEFT JOIN


-- Select the unique ID and employee name.
SELECT e2.unique_id, e1.name

-- Get employee details from the Employees table.
FROM Employees e1

-- Include all employees, even if they do not have a unique ID.
LEFT JOIN EmployeeUNI e2

-- Match employees from both tables using their employee ID.
ON e1.id = e2.id;