# Write your MySQL query statement below
SELECT e1.employee_id, e1.name, SUM(CASE WHEN e2.reports_to IS NOT NULL 1 ELSE 0 END) reports_count, ROUND(AVG(e2.age), 0) average_age

FROM Employees e1 INNER JOIN Employees e2 ON (e2.reports_to IS NOT NULL AND e2.reports_to = e1.employee_id)

GROUP BY 1

ORDER BY e1.employee_id