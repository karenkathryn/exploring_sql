SELECT 
  Request_at AS 'Day'
  , ROUND((COUNT(
            CASE 
                WHEN t.Status IN ('cancelled_due_to_weather') 
                THEN 1 
                ELSE NULL 
            END
            ) / COUNT(*) ), 2) AS `Cancellation Rate`
FROM Trips t  
JOIN Users d ON t.Driver_Id = d.Users_Id AND d.Banned = 'No'
JOIN Users c ON t.Client_Id = c.Users_id AND c.Banned = 'No'
WHERE Request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY Day
ORDER BY Day;