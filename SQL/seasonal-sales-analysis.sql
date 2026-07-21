WITH sales_with_season AS (
    SELECT
        p.category,
        s.quantity,
        s.quantity * s.price AS revenue,
        CASE
            WHEN MONTH(s.sale_date) IN (12, 1, 2) THEN 'Winter'
            WHEN MONTH(s.sale_date) IN (3, 4, 5)  THEN 'Spring'
            WHEN MONTH(s.sale_date) IN (6, 7, 8)  THEN 'Summer'
            ELSE 'Fall'
        END AS season
    FROM sales s
    JOIN products p ON s.product_id = p.product_id
),
category_totals AS (
    SELECT
        season,
        category,
        SUM(quantity) AS total_quantity,
        SUM(revenue) AS total_revenue
    FROM sales_with_season
    GROUP BY season, category
),
ranked AS (
    SELECT
        season,
        category,
        total_quantity,
        total_revenue,
        RANK() OVER (PARTITION BY season ORDER BY total_quantity DESC, total_revenue DESC) AS rnk
    FROM category_totals
)
SELECT season, category, total_quantity, total_revenue
FROM ranked
WHERE rnk = 1
ORDER BY season;
