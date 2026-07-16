-- LeetCode 185: Department Top Three Salaries (Hard)
-- https://leetcode.com/problems/department-top-three-salaries/
-- Approach: DENSE_RANK per department ordered by salary desc, so ties
-- don't break the top-3 cutoff, then filter rank <= 3.
-- Note: if window functions aren't supported on a given platform, the
-- older fallback is a correlated subquery counting distinct higher salaries.

SELECT Department, Employee, Salary
FROM (
    SELECT 
        e.name AS Employee,
        e.salary AS Salary,
        d.name AS Department,
        DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY e.salary DESC) AS rnk
    FROM Employee e
    JOIN Department d ON e.departmentId = d.id
) ranked
WHERE rnk <= 3;
