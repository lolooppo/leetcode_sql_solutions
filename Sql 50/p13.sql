# Write your MySQL query statement below
SELECT t1.name

FROM Employee AS t1 CROSS JOIN Employee AS t2

WHERE t2.managerId is not null and t1.id = t2.managerId

GROUP BY t1.id

HAVING COUNT(t1.id) >= 5