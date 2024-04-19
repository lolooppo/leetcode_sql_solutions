# Write your MySQL query statement below
SELECT user_id, UPPER(LEFT(name, 1)) + LOWER(SUBS) AS name

FROM Users

ORDER BY 1