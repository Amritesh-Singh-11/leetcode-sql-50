-- Problem: Customer Who Visited but Did Not Make Any Transactions
-- Problem ID: 1581
-- Difficulty: Easy
-- Topics: LEFT JOIN, WHERE, COUNT, GROUP BY


-- Select the customer ID and count their visits without transactions.
SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans

-- Get the visit records from the Visits table.
FROM Visits v

-- Match each visit with its corresponding transaction.
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id

-- Keep only visits that have no matching transaction.
WHERE t.transaction_id IS NULL

-- Group the results by customer to count visits for each customer.
GROUP BY v.customer_id;