-- 3482. Analyze Organization Hierarchy
-- Difficulty: Hard
-- Concept: Recursive CTE, Hierarchical Aggregation
-- Link: https://leetcode.com/problems/analyze-organization-hierarchy/

WITH RECURSIVE Hierarchy AS (
    SELECT employee_id, employee_name, manager_id, salary, department, 1 AS level
    FROM Employees
    WHERE manager_id IS NULL
    UNION ALL
    SELECT e.employee_id, e.employee_name, e.manager_id, e.salary, e.department, h.level + 1
    FROM Employees e
    JOIN Hierarchy h ON e.manager_id = h.employee_id
),
Descendants AS (
    SELECT employee_id AS manager_id, employee_id AS descendant_id, salary AS descendant_salary
    FROM Employees
    UNION ALL
    SELECT d.manager_id, e.employee_id, e.salary
    FROM Descendants d
    JOIN Employees e ON e.manager_id = d.descendant_id
)
SELECT
    h.employee_id,
    h.employee_name,
    h.level,
    COALESCE(t.team_size, 0) AS team_size,
    t.budget AS budget
FROM Hierarchy h
LEFT JOIN (
    SELECT manager_id,
           COUNT(*) - 1 AS team_size,
           SUM(descendant_salary) AS budget
    FROM Descendants
    GROUP BY manager_id
) t ON h.employee_id = t.manager_id
ORDER BY h.level ASC, t.budget DESC, h.employee_name ASC;
