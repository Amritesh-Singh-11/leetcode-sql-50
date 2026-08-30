```sql
-- Problem: Recyclable and Low Fat Products
-- Problem ID: 1757
-- Difficulty: Easy
-- Topics: SELECT, WHERE

-- Select the product_id column because we need to return
-- the IDs of products that satisfy both conditions.
SELECT product_id

-- Retrieve the data from the Products table.
FROM Products

-- Filter the products to include only those that are low fat.
WHERE low_fats = 'Y'

-- Also ensure that the products are recyclable.
-- Both conditions must be true because we are using AND.
AND recyclable = 'Y';
```
