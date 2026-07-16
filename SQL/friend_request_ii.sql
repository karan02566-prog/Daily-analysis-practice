-- LeetCode 602: Friend Request II: Who Has the Most Friends (Medium)
-- https://leetcode.com/problems/friend-request-ii-who-has-the-most-friends/
-- Approach: requests are directional (requester_id, accepter_id), but both
-- sides count as "having a friend." UNION ALL stacks both columns into one,
-- so counting rows per id gives total friend count.

SELECT id, COUNT(*) AS num
FROM (
    SELECT requester_id AS id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id FROM RequestAccepted
) AS combined
GROUP BY id
ORDER BY num DESC
LIMIT 1;
