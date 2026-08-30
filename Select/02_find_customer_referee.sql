-- Problem: Find Customer Referee
-- Problem ID: 584
-- Difficulty: Easy
-- Topics: WHERE, NULL, IFNULL, COALESCE


-- ============================================================
-- Method 1: Using IFNULL()
-- ============================================================

-- Select the customer's name because we need to return
-- the names of customers who were not referred by customer 2.
SELECT name

-- Retrieve the data from the Customer table.
FROM Customer

-- IFNULL() replaces NULL referee_id values with -1.
-- Therefore, customers with NULL referee_id are also included.
-- We then check that the resulting value is not equal to 2.
WHERE IFNULL(referee_id, -1) <> 2;


-- ============================================================
-- Method 2: Using COALESCE()
-- ============================================================

-- Select the customer's name.
SELECT name

-- Retrieve the data from the Customer table.
FROM Customer

-- COALESCE() returns referee_id if it is not NULL.
-- If referee_id is NULL, it returns -1 instead.
-- We then exclude customers whose resulting referee_id is 2.
WHERE COALESCE(referee_id, -1) <> 2;


-- ============================================================
-- Method 3: Using OR with IS NULL
-- ============================================================

-- Select the customer's name.
SELECT name

-- Retrieve the data from the Customer table.
FROM Customer

-- Select customers whose referee_id is not equal to 2.
WHERE referee_id <> 2

-- NULL cannot be compared using <>.
-- Therefore, explicitly include customers whose referee_id is NULL.
OR referee_id IS NULL;