
WITH single_action_days AS (
    SELECT user_id, action_date, MIN(action) AS action
    FROM activity
    GROUP BY user_id, action_date
    HAVING COUNT(*) = 1
),
ranked AS (
    SELECT user_id, action_date, action,
        DATE_SUB(action_date, INTERVAL
            ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY action_date) DAY
        ) AS date_grp
    FROM single_action_days
),
with_change AS (
    SELECT user_id, action_date, action, date_grp,
        CASE WHEN action = LAG(action) OVER (
                 PARTITION BY user_id, date_grp ORDER BY action_date)
             THEN 0 ELSE 1 END AS is_new_streak
    FROM ranked
),
streak_ids AS (
    SELECT user_id, action, action_date, date_grp,
        SUM(is_new_streak) OVER (
            PARTITION BY user_id, date_grp ORDER BY action_date
        ) AS streak_id
    FROM with_change
),
streaks AS (
    SELECT user_id, action, date_grp, streak_id,
        COUNT(*) AS streak_length,
        MIN(action_date) AS start_date,
        MAX(action_date) AS end_date
    FROM streak_ids
    GROUP BY user_id, action, date_grp, streak_id
),
ranked_streaks AS (
    SELECT user_id, action, streak_length, start_date, end_date,
        ROW_NUMBER() OVER (
            PARTITION BY user_id ORDER BY streak_length DESC
        ) AS rn
    FROM streaks
    WHERE streak_length >= 5
)
SELECT user_id, action, streak_length, start_date, end_date
FROM ranked_streaks
WHERE rn = 1
ORDER BY streak_length DESC, user_id ASC;
