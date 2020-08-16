/*
    Author:     Karen Warmbein 
    Date:       August 14, 2020
    Purpose:    Solve a difficult problem with an astronomy example             
    Note:       Problem statement:

      The observations_info table holds all attempted observations at a major observatory. Each record has a unique id, while astronomer_id and observatory_id are both foreign keys to the id in the user_info table.

      The Users table holds all users (both astronomers and observatories). Each user has an unique id, and role is either astronomer or observatory.

      Write a SQL query to find the cancellation rate of observing sessions made bu users that were unsucessful at observing. The query should return a cancellation rate rounded to three decimal places, and the dates those rates are for.
*/



SELECT 
  oi.observation_date 
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
      , ARRAY_AGG(a.id || ',  ' || o.id) FILTER (WHERE oi.weather_status='cloudy' ) AS ids
FROM observation_info oi
INNER JOIN user_info a ON oi.astronomer_id = a.id 
INNER JOIN user_info o ON oi.observatory_id = o.id 

GROUP BY oi.observation_date;