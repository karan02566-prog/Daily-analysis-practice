WITH t AS (
    SELECT user_id, reaction, COUNT(*) cnt
    FROM reactions
    GROUP BY user_id, reaction
),
s AS (
    SELECT user_id, MAX(cnt) mx_cnt, ROUND(MAX(cnt) / SUM(cnt), 2) reaction_ratio
    FROM t
    GROUP BY user_id
    HAVING reaction_ratio >= 0.60 AND SUM(cnt) >= 5
)
SELECT s.user_id, t.reaction AS dominant_reaction, s.reaction_ratio
FROM s
JOIN t USING (user_id)
WHERE t.cnt = s.mx_cnt
ORDER BY s.reaction_ratio DESC, s.user_id;
