-- Problem: Employee Bonus
-- Problem ID: 577
-- Difficulty: Easy
-- Topics: LEFT JOIN, WHERE, NULL


-- Select the employee name and their bonus.
SELECT e.name, b.bonus

-- Get employee details from the Employee table.
FROM Employee e

-- Include all employees, even those without a bonus.
LEFT JOIN Bonus b

-- Match employees with their corresponding bonus records.
ON e.empId = b.empId

-- Select employees whose bonus is less than 1000.
WHERE b.bonus < 1000

-- Also include employees who do not have a bonus.
OR b.bonus IS NULL;