/*
    Author:     Karen Warmbein 
    Date:       June 18, 2020
    Purpose:    Show an example of a window function            
    Note:       None
*/


SELECT ss_name
    , diameter
    , classification
    , SUM(diameter) OVER(PARTITION BY classification) AS total_class
    , CAST( CAST(diameter AS decimal) / 
            CAST( SUM(diameter) OVER(PARTITION BY classification) AS decimal)  
            * 100 AS int) AS pct
FROM solar_system_20
ORDER BY classification,
    5 DESC;

