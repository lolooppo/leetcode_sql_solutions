# Write your MySQL query statement below
SELECT t1.machine_id, ROUND(AVG(t2.timestamp - t1.timestamp), 3) processing_time

FROM Activity AS t1, Activity AS t2

WHERE t1.machine_id = t2.machine_id
    AND t1.process_id = t2.process_id   
    AND (t1.activity_type = 'start' and t2.activity_type = 'end')

GROUP BY 1