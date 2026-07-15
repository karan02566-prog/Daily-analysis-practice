-- 178. Rank Scores
-- Difficulty: Medium
-- Concept: Window functions (DENSE_RANK)

SELECT score, DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
FROM Scores;
