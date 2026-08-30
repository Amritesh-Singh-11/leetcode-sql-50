-- Problem: Immediate Food Delivery II
-- Problem ID: 1174
-- Difficulty: Medium
-- Topics: DENSE_RANK, Window Functions, Subquery, IF, AVG, ROUND


-- Calculate the percentage of customers whose first order was delivered immediately.
SELECT ROUND(AVG(IF(order_date = customer_pref_delivery_date, 1, 0)) * 100, 2) AS immediate_percentage

-- Use the ranked delivery records as the source table.
FROM (
    
    -- Select all delivery records and assign a rank to each order.
    SELECT *,
    
    -- Rank orders for each customer based on the order date.
    DENSE_RANK() OVER (
        PARTITION BY customer_id 
        ORDER BY order_date ASC
    ) AS order_rank

    -- Get the delivery records from the Delivery table.
    FROM Delivery

) d

-- Keep only each customer's first order.
WHERE order_rank = 1;