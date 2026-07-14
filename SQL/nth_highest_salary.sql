-- Nth Highest Salary
-- Platform: LeetCode #177
-- Approach: Function-based query. N-1 offset since OFFSET is zero-indexed. DISTINCT + ORDER BY DESC + LIMIT 1 OFFSET N-1 retrieves the Nth highest, returns null automatically if N exceeds available rows

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N = N - 1;
  RETURN (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET N
  );
END
