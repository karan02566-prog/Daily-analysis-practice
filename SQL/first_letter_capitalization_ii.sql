-- LeetCode 3374: First Letter Capitalization II (Hard)
-- https://leetcode.com/problems/first-letter-capitalization-ii/
-- Approach: recursive numbers CTE splits content_text into words
-- (no native string-split in MySQL). Each word gets the hyphen rule only
-- when it has exactly one hyphen with non-empty text on both sides
-- (e.g. QUICK-brown -> Quick-Brown); every other case (0 hyphens, 2+
-- hyphens, or a hyphen touching empty text) just capitalizes the word's
-- first character and lowercases the rest, hyphens untouched.
-- Debugged against a real submission (13/14 -> 14/14) after finding the
-- multi-hyphen edge case wasn't covered by the plain "split on first/last
-- hyphen" version.

WITH RECURSIVE numbers AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1 FROM numbers WHERE n < 50
),
words AS (
    SELECT 
        uc.content_id,
        uc.content_text,
        n.n AS word_pos,
        SUBSTRING_INDEX(SUBSTRING_INDEX(uc.content_text, ' ', n.n), ' ', -1) AS word
    FROM user_content uc
    JOIN numbers n 
        ON n.n <= LENGTH(uc.content_text) - LENGTH(REPLACE(uc.content_text, ' ', '')) + 1
),
capitalized AS (
    SELECT
        content_id, content_text, word_pos,
        CASE 
            WHEN (LENGTH(word) - LENGTH(REPLACE(word, '-', ''))) = 1
                 AND SUBSTRING_INDEX(word, '-', 1) <> ''
                 AND SUBSTRING_INDEX(word, '-', -1) <> ''
            THEN CONCAT(
                    UPPER(LEFT(SUBSTRING_INDEX(word, '-', 1), 1)),
                    LOWER(SUBSTRING(SUBSTRING_INDEX(word, '-', 1), 2)),
                    '-',
                    UPPER(LEFT(SUBSTRING_INDEX(word, '-', -1), 1)),
                    LOWER(SUBSTRING(SUBSTRING_INDEX(word, '-', -1), 2))
                 )
            ELSE CONCAT(UPPER(LEFT(word, 1)), LOWER(SUBSTRING(word, 2)))
        END AS capped_word
    FROM words
)
SELECT
    content_id,
    content_text AS original_text,
    GROUP_CONCAT(capped_word ORDER BY word_pos SEPARATOR ' ') AS converted_text
FROM capitalized
GROUP BY content_id, content_text
ORDER BY content_id;
