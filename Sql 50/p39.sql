# Write your MySQL query statement below
SELECT name AS results
FROM Users AS u INNER JOIN MovieRating AS m ON u.user_id = m.user_id
GROUP BY 1
ORDER BY COUNT(*) DESC, 1 ASC
LIMIT 1

UNION ALL

SELECT m1.title
FROM Movies AS m1 INNER JOIN MovieRating AS m2 ON m1.movie_id = m2.movie_id
WHERE YEAR(m2.created_at) = '2020' AND MONTH(m2.created_at) = 2
GROUP BY 1
ORDER BY AVG(m2.rating) DESC, 1 ASC
LIMIT 1