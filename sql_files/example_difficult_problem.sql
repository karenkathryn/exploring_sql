SELECT 
  oi.observation_date AS observing_date
  , SUM(CASE 
      WHEN oi.weather_status='cloudy' THEN 1 
      ELSE 0  
    END) AS cloudy
  , COUNT(oi.observation_date) AS total
  , ROUND(
      CAST(
        SUM(CASE 
          WHEN oi.weather_status='cloudy' THEN 1 
          ELSE 0  
        END) 
      AS NUMERIC) / COUNT(oi.observation_date), 3) AS cancellation_rate
FROM observation_info oi 
GROUP BY observing_date;