# Write your MySQL query statement below
SELECT S.user_id, ROUND(COUNT(CASE WHEN C.action = 'confirmed' THEN 1 END) / COUNT(*) , 2) confirmation_rate

FROM Signups AS S LEFT JOIN Confirmations AS C
ON S.user_id = C.user_id

GROUP BY S.user_id