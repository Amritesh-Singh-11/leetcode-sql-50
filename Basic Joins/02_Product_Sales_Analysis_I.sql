-- Problem: Product Sales Analysis I
-- Problem ID: 1068
-- Difficulty: Easy
-- Topics: LEFT JOIN


-- Select the product name, sale year, and sale price.
SELECT p.product_name, s.year, s.price

-- Get sales information from the Sales table.
FROM Sales s

-- Include matching product information from the Product table.
LEFT JOIN Product p

-- Match products using their product_id.
ON p.product_id = s.product_id;