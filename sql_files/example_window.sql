/*
    Author:     Karen Warmbein 
    Date:       May 17, 2020
    Purpose:                 
    Note:       None
*/

SELECT ss_name, 
    diameter, classification,
COUNT(*) OVER(PARTITION BY classification) AS ss_count
FROM solar_system_20
ORDER BY diameter;