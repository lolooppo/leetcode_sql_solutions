# Write your MySQL query statement below
SELECT customer_id, count(customer_id) as 'count_no_trans'

FROM Visits

Left join Transactions using(visit_id)

Where  transaction_id is null

group by customer_id