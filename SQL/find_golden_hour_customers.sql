SELECT
    customer_id,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(CASE WHEN HOUR(order_timestamp) BETWEEN 11 AND 13
                      OR HOUR(order_timestamp) BETWEEN 18 AND 20
                 THEN 1 ELSE 0 END) * 100.0 / COUNT(order_id)) AS peak_hour_percentage,
    ROUND(AVG(order_rating), 2) AS average_rating
FROM restaurant_orders
GROUP BY customer_id
HAVING
    (SUM(order_rating IS NOT NULL) * 1.0 / COUNT(order_id)) >= 0.5
    AND COUNT(order_id) >= 3
    AND (SUM(CASE WHEN HOUR(order_timestamp) BETWEEN 11 AND 13
                     OR HOUR(order_timestamp) BETWEEN 18 AND 20
                THEN 1 ELSE 0 END) * 100.0 / COUNT(order_id)) >= 60
    AND AVG(order_rating) >= 4.0
ORDER BY AVG(order_rating) DESC, customer_id DESC;
