/*
    Author:     Karen Warmbein 
    Date:       June 27, 2020
    Purpose:    The purpose of this file is to experiement with various queries            
    Note:       None
*/

-- Finding duplicates from a table
SELECT 
    classification,
    count(*)
FROM solar_system_20
GROUP BY classification
HAVING count(*) > 2;


-- Using CONCAT and eliminating as for alising
SELECT 
    CONCAT_WS(' -- ', ss_name, classification) ss_info
FROM solar_system_20
ORDER BY classification;

