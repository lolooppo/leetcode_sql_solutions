# Write your MySQL query statement below
SELECT contest_id, ROUND(100 * COUNT(DISTINCT user_id) / (SELECT COUNT(user_id) FROM Users), 2) percentage

FROM Register

GROUP BY contest_id

ORDER BY percentage DESC, contest_id ASC