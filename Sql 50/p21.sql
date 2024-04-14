# Write your MySQL query statement below
SELECT ROUND(100 * SUM(CASE WHEN customer_pref_delivery_date = order_date THEN 1 ELSE 0 END) / COUNT(customer_id), 2) immediate_percentage

FROM DELIVERY WHERE (customer_id, order_date) IN

(
    SELECT customer_id, MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
    
)