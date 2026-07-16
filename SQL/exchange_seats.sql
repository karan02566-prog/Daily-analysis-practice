-- LeetCode 626: Exchange Seats (Medium)
-- https://leetcode.com/problems/exchange-seats/
-- Approach: odd ids move to id+1, even ids move to id-1, except the last
-- id if the total row count is odd (no partner to swap with, stays put).

SELECT
    CASE
        WHEN id = (SELECT MAX(id) FROM Seat) AND id % 2 = 1 THEN id
        WHEN id % 2 = 1 THEN id + 1
        ELSE id - 1
    END AS id,
    student
FROM Seat
ORDER BY id;
