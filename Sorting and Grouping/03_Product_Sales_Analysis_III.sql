-- Problem: Product Sales Analysis III
-- Problem ID: 1070
-- Difficulty: Medium
-- Topics: DENSE_RANK, Window Functions, Subquery


-- Select the product ID, first year, quantity, and price.
SELECT product_id, year AS first_year, quantity, price

-- Use the ranked sales records as the source table.
FROM (

    -- Select all sales records and assign a rank to each sale.
    SELECT *,
    
    -- Rank each product's sales by year, with the earliest year ranked first.
    DENSE_RANK() OVER (
        PARTITION BY product_id
        ORDER BY year ASC
    ) AS order_rank

    -- Get the sales records from the Sales table.
    FROM Sales

) T

-- Keep only sales that occurred in the first year for each product.
WHERE order_rank = 1;