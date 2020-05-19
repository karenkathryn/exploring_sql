/*
    Author:     Karen Warmbein 
    Date:       May 17, 2020
    Purpose:                
    Note:       None
*/

SELECT 
    classification,
    COUNT(classification) AS ss_count,
    ARRAY_AGG(ss_name) AS class_name,
    ARRAY_AGG(diameter) AS class_diameter
FROM solar_system_20
GROUP BY classification;