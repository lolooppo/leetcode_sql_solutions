# Write your MySQL query statement below
SELECT SUBSTR(trans_date, 1, 7) month, country, COUNT(id) trans_count, SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) approved_count, sum(amount) trans_total_amount, sum(CASE WHEN state = 'approved' THEN amount ELSE 0 END) approved_total_amount

FROM Transactions

GROUP BY month, country
