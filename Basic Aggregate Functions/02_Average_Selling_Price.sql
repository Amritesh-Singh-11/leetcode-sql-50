-- Problem: Average Selling Price
-- Problem ID: 1251
-- Difficulty: Easy
-- Topics: LEFT JOIN, IFNULL, ROUND, SUM, GROUP BY


-- Select the product ID and calculate the weighted average selling price.
SELECT p.product_id,

-- Multiply price by units to get the total sales amount,
-- divide by total units, round to 2 decimal places,
-- and return 0 if there are no sales.
IFNULL(
    ROUND(SUM(p.price * u.units) / SUM(u.units), 2),
    0
) AS average_price

-- Get the price information from the Prices table.
FROM Prices p

-- Include all products, even if they have no sales.
LEFT JOIN UnitsSold u

-- Match records for the same product.
ON p.product_id = u.product_id

-- Include only purchases made during the applicable price period.
AND u.purchase_date >= p.start_date
AND u.purchase_date <= p.end_date

-- Calculate the average price separately for each product.
GROUP BY p.product_id;