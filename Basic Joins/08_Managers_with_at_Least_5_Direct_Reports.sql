-- Problem: Managers with at Least 5 Direct Reports
-- Problem ID: 570
-- Difficulty: Medium
-- Topics: INNER JOIN, GROUP BY, HAVING


-- Select the manager's name.
SELECT e2.name

-- Use Employee as e1 to represent employees.
FROM Employee e1

-- Join Employee again as e2 to represent managers.
INNER JOIN Employee e2

-- Match each employee's managerId with the manager's id.
ON e1.managerId = e2.id

-- Group employees by their manager.
GROUP BY e2.id, e2.name

-- Keep only managers who have at least 5 direct reports.
HAVING COUNT(e1.id) >= 5;