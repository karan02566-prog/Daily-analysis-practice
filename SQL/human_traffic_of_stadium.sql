-- LeetCode 601: Human Traffic of Stadium (Hard)
-- https://leetcode.com/problems/human-traffic-of-stadium/
-- Approach: classic gaps-and-islands. id - ROW_NUMBER() is constant across
-- any run of consecutive ids, so it groups consecutive qualifying rows
-- into "islands"; keep islands with 3+ rows.

WITH flagged AS (
    SELECT 
        id, visit_date, people,
        id - ROW_NUMBER() OVER (ORDER BY id) AS grp
    FROM Stadium
    WHERE people >= 100
)
SELECT id, visit_date, people
FROM flagged
WHERE grp IN (
    SELECT grp FROM flagged GROUP BY grp HAVING COUNT(*) >= 3
)
ORDER BY id;
