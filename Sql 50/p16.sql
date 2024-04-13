# Write your MySQL query statement below
SELECT t1.product_id, IFNULL(round(sum(units*price) / sum(units), 2), 0) average_price

FROM Prices AS t1 LEFT JOIN UnitsSold AS t2 ON t1.product_id = t2.product_id AND  purchase_date  BETWEEN start_date AND end_date

GROUP BY t1.product_id