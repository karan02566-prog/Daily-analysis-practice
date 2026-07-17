-- 3497. Analyze Subscription Conversion
-- Difficulty: Medium
-- Concept: Conditional Aggregation (CASE + AVG), HAVING
-- Link: https://leetcode.com/problems/analyze-subscription-conversion/

SELECT
    user_id,
    ROUND(AVG(CASE WHEN activity_type = 'free_trial' THEN activity_duration END), 2) AS trial_avg_duration,
    ROUND(AVG(CASE WHEN activity_type = 'paid' THEN activity_duration END), 2) AS paid_avg_duration
FROM UserActivity
GROUP BY user_id
HAVING SUM(activity_type = 'free_trial') > 0 AND SUM(activity_type = 'paid') > 0
ORDER BY user_id;
