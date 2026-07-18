-- 1164. Product Price at a Given Date
-- Difficulty: Medium
-- Find the price of each product on 2019-08-16. Default price is 10 if no change
-- has occurred yet by that date.

SELECT product_id, 10 AS price
FROM Products
GROUP BY product_id
HAVING MIN(change_date) > '2019-08-16'

UNION

SELECT product_id, new_price AS price
FROM Products
WHERE (product_id, change_date) IN (
    SELECT product_id, MAX(change_date)
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
);
