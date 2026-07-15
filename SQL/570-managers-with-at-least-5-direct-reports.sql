-- 570. Managers with at Least 5 Direct Reports
-- Difficulty: Medium
-- Concept: GROUP BY + HAVING, self-referencing table

SELECT name
FROM Employee
WHERE id IN (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
);
