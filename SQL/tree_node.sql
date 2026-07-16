-- LeetCode 608: Tree Node (Medium)
-- https://leetcode.com/problems/tree-node/
-- Approach: classify each node via self-reference. No parent -> Root;
-- appears as someone else's p_id -> Inner; otherwise -> Leaf.

SELECT id,
    CASE
        WHEN p_id IS NULL THEN 'Root'
        WHEN id IN (SELECT DISTINCT p_id FROM Tree WHERE p_id IS NOT NULL) THEN 'Inner'
        ELSE 'Leaf'
    END AS type
FROM Tree;
