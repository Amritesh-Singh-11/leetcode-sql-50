-- Problem: Monthly Transactions I
-- Problem ID: 1193
-- Difficulty: Medium
-- Topics: DATE_FORMAT, COUNT, SUM, IF, GROUP BY


-- Select the transaction month and country.
SELECT DATE_FORMAT(trans_date, '%Y-%m') AS month, country,

-- Count the total number of transactions.
COUNT(id) AS trans_count,

-- Count only the transactions with an approved state.
SUM(IF(state = 'approved', 1, 0)) AS approved_count,

-- Calculate the total transaction amount.
SUM(amount) AS trans_total_amount,

-- Calculate the total amount of approved transactions.
SUM(IF(state = 'approved', amount, 0)) AS approved_total_amount

-- Get the data from the Transactions table.
FROM Transactions t

-- Group transactions by month and country.
GROUP BY DATE_FORMAT(trans_date, '%Y-%m'), country;