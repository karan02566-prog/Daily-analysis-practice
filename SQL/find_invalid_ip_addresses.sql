-- LeetCode 3451: Find Invalid IP Addresses (Hard)
-- https://leetcode.com/problems/find-invalid-ip-addresses/
-- Approach: an IP is invalid if it doesn't have exactly 4 dot-separated
-- octets, any octet has a leading zero, or any octet exceeds 255.
-- SUBSTRING_INDEX pulls each octet out (MySQL has no native split),
-- REGEXP catches leading zeros, CAST ... AS UNSIGNED checks the bound.

SELECT 
    ip,
    COUNT(*) AS invalid_count
FROM logs
WHERE 
    (LENGTH(ip) - LENGTH(REPLACE(ip, '.', ''))) != 3
    OR SUBSTRING_INDEX(ip, '.', 1) REGEXP '^0[0-9]'
    OR SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 2), '.', -1) REGEXP '^0[0-9]'
    OR SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 3), '.', -1) REGEXP '^0[0-9]'
    OR SUBSTRING_INDEX(ip, '.', -1) REGEXP '^0[0-9]'
    OR CAST(SUBSTRING_INDEX(ip, '.', 1) AS UNSIGNED) > 255
    OR CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 2), '.', -1) AS UNSIGNED) > 255
    OR CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 3), '.', -1) AS UNSIGNED) > 255
    OR CAST(SUBSTRING_INDEX(ip, '.', -1) AS UNSIGNED) > 255
GROUP BY ip
ORDER BY invalid_count DESC, ip DESC;
