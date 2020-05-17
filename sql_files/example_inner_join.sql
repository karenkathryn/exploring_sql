/*
    Author:     Karen Warmbein 
    Date:       May 17, 2020
    Purpose:    Using inner join to create a new view             
    Note:       None
*/
SELECT p.name, ss.diameter, p.mass, ss.ss_name
FROM solar_system_20 AS ss
INNER JOIN planets AS p
ON ss.ss_name = p.name ;
