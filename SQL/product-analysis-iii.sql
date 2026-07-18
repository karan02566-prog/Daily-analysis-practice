-- 1070. Product Sales Analysis III
-- Difficulty: Medium
-- Find the first year each product was sold, along with that year's quantity and price.

SELECT product_id, year AS first_year, quantity, price
FROM Sales
WHERE (product_id, year) IN (
    SELECT product_id, MIN(year)
    FROM Sales
    GROUP BY product_id
);
