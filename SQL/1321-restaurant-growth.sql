-- 1321. Restaurant Growth
-- Difficulty: Medium
-- Topics: Window Functions, Range Frames, Moving Average
-- Note: Assumes no gaps in visited_on dates (true for this problem's dataset)

SELECT visited_on,
       amount AS amount,
       ROUND(avg_amount, 2) AS average_amount
FROM (
    SELECT visited_on,
           SUM(amount) OVER (ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW) AS amount,
           SUM(amount) OVER (ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW) / 7 AS avg_amount,
           ROW_NUMBER() OVER (ORDER BY visited_on) AS rn
    FROM (
        SELECT visited_on, SUM(amount) AS amount
        FROM Customer
        GROUP BY visited_on
    ) daily
) t
WHERE rn >= 7
ORDER BY visited_on;
