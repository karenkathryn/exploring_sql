/*
    Author:     Karen Warmbein 
    Date:       July 18, 2020
*/

-- Using CONCAT and eliminating as for alising
SELECT
  CONCAT_WS(' -- ', ss_name, classification) ss_info
  , count(ss_info) name_count
FROM solar_system_20
ORDER BY classification
GROUP BY ss_info
HAVING count(ss_info) >= 2;

-- Finding duplicates in a table
SELECT 
    classification,
    count(*)
FROM solar_system_20
GROUP BY classification
HAVING count(*) >= 2
;