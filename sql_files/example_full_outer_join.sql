/*
    Author:     Karen Warmbein 
    Date:       May 17, 2020
    Purpose:    Using full outer join to create a new view             
    Note:       None
*/
SELECT ss.ss_name
FROM solar_system_20 AS ss
FULL OUTER JOIN planets AS p
ON ss.ss_name = p.name
ORDER BY ss.ss_name;