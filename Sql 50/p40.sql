# Write your MySQL query statement below
SELECT c1.visited_on, SUM(c2.amount) AS amount, ROUND(SUM(c2.amount) / 7, 2) AS average_amount

FROM (SELECT DISTINCT visited_on FROM Customer WHERE visited_on - (SELECT MIN(visited_on) FROM Customer) >= 6) AS c1 

INNER JOIN Customer AS c2 ON (DATEDIFF(c1.visited_on, c2.visited_on) BETWEEN 0 AND 6) 

GROUP BY 1

ORDER BY 1 ASC