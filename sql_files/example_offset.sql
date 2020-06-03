/*
    Author:     Karen Warmbein 
    Date:       June 1, 2020
    Purpose:    Using offset to create a new view             
    Note:       None
*/

SELECT * 
FROM solar_system_20
ORDER BY diameter ASC
LIMIT 1 OFFSET 4; 

SELECT *
FROM solar_system_20
ORDER BY diameter
LIMIT 3 OFFSET 11;


SELECT ss_name, diameter, classification, ss_location
FROM solar_system_20
ORDER BY diameter
LIMIT 2;