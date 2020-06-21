/*
    Author:     Karen Warmbein 
    Date:       June 18, 2020
    Purpose:    Show an example of a window function            
    Note:       None
*/


-- window functions
-- SELECT 
--     ss_name
--     , diameter
--     , CASE 
--         WHEN classification = 'moon' THEN moon_total
--         WHEN classification = 'planet' THEN planet_total 
--         WHEN classification = 'star' THEN star_total
--         ELSE d_planet_total
--       END AS total_class
--     , CASE 
--         WHEN classification = 'moon' THEN CAST(CAST(diameter AS decimal) / CAST(moon_total AS decimal) * 100 AS int)
--         WHEN classification = 'planet' THEN CAST(CAST(diameter AS decimal) / CAST(planet_total AS decimal) * 100 AS int)
--         WHEN classification = 'star' THEN CAST(CAST(diameter AS decimal) / CAST(star_total AS decimal) * 100 AS int)
--         ELSE CAST(CAST(diameter AS decimal) / CAST(d_planet_total AS decimal) * 100 AS int)
--       END AS pct
-- FROM (SELECT 
--     ss_name
--     , diameter
--     , classification
--     , (SELECT SUM(diameter) FROM solar_system_20 WHERE classification = 'moon' ) AS moon_total 
--     , (SELECT SUM(diameter) FROM solar_system_20 WHERE classification = 'planet' ) AS planet_total 
--     , (SELECT SUM(diameter) FROM solar_system_20 WHERE classification = 'dwarf planet' ) AS d_planet_total 
--     , (SELECT SUM(diameter) FROM solar_system_20 WHERE classification = 'star' ) AS star_total
--     FROM solar_system_20
--     ) AS temp
-- GROUP BY ss_name
--     , diameter
--     , classification
--     , moon_total
--     , d_planet_total
--     , planet_total
--     , star_total
-- ORDER BY diameter DESC;


SELECT ss_name
    , diameter
    , classification
    , SUM(diameter) OVER(PARTITION BY classification) AS total_class
    , CAST( CAST(diameter AS decimal) / 
            CAST( SUM(diameter) OVER(PARTITION BY classification) AS decimal)  
            * 100 AS int) AS pct
FROM solar_system_20
--Another option for specifying which column to sort on is to use a column 
-- ordinal position. By ordinal position I mean the order in which the columns 
-- appear in the SELECT list. One reason why you might use the ordinal position 
-- in your ORDER BY clause is when the select list column you want to sort on 
-- contains a complicated expression, such as a CASE expression. 
ORDER BY 5 DESC
    , ss_name;

