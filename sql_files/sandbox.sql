/*
    Author:     Karen Warmbein 
    Date:       June 27, 2020
    Purpose:    The purpose of this file is to experiement with various queries            
    Note:       None
*/

-- Finding duplicates from a table
-- SELECT 
--     classification,
--     count(*)
-- FROM solar_system_20
-- GROUP BY classification
-- HAVING count(*) > 2;


-- Using CONCAT and eliminating as for alising
-- SELECT 
--     CONCAT_WS(' -- ', ss_name, classification) ss_info
-- FROM solar_system_20
-- ORDER BY classification;


SELECT ss_name
    , diameter
    , classification
    , lag(ss_name, 1) over w as "previous"
    , lead(ss_name, 1) over w as "next"
FROM solar_system_20
window w as (ORDER BY diameter);

