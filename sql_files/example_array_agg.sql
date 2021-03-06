/*
    Author:     Karen Warmbein 
    Date:       May 17, 2020
    Updated:    June 3, 2020
    Purpose:    Use array aggregate function for new view           
    Note:       None
*/

SELECT 
    classification,
    COUNT(classification) AS ss_count,
    ARRAY_AGG(ss_name) AS class_name,
    ARRAY_AGG(diameter) AS class_diameter
FROM solar_system_20
GROUP BY classification;

SELECT 
    classification,
    COUNT(classification) AS ss_count,
    ARRAY_AGG((ss_name, diameter) ORDER BY ss_name) AS info
FROM solar_system_20
GROUP BY classification;

SELECT 
    classification,
    COUNT(classification) AS ss_count,
    (ARRAY_AGG((ss_name,diameter) ORDER BY ss_name))[2:3] AS names
FROM solar_system_20
GROUP BY classification;