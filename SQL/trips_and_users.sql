-- LeetCode 262: Trips and Users (Hard)
-- https://leetcode.com/problems/trips-and-users/
-- Approach: join Trips to Users twice (client + driver) filtering banned = 'No'
-- on both sides, then compute cancelled/total per day.

SELECT 
    t.request_at AS Day,
    ROUND(
        SUM(CASE WHEN t.status LIKE 'cancelled%' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS `Cancellation Rate`
FROM Trips t
JOIN Users cu ON t.client_id = cu.users_id AND cu.banned = 'No'
JOIN Users du ON t.driver_id = du.users_id AND du.banned = 'No'
WHERE t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY t.request_at
ORDER BY t.request_at;
