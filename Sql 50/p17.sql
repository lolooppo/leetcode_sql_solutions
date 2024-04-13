# Write your MySQL query statement below
SELECT project_id, ROUND(AVG(experience_years), 2) average_years

FROM Project AS t1 INNER JOIN Employee AS t2 USING(employee_id)

GROUP BY project_id