-- -- Finding duplicates from a table

-- SELECT 
--     classification,
--     count(*)
-- FROM solar_system_20
-- GROUP BY classification
-- HAVING count(*) > 2;

-- SELECT 
--     ss_name,
--     count(*)
-- FROM solar_system_20
-- GROUP BY ss_name
-- HAVING count(*) > 2;

-- SELECT DISTINCT classification, count(*)
-- FROM solar_system_20
-- GROUP BY classification;

-- Using CONCAT and eliminating as for alising
-- SELECT 
--     CONCAT_WS(' -- ', ss_name, classification) ss_info
-- FROM solar_system_20
-- ORDER BY classification;

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


SELECT 
    ss_name
    , diameter
    , classification
    , SUM(diameter) OVER(PARTITION BY classification) AS total_class
    , CAST( CAST(diameter AS decimal) / 
            CAST( SUM(diameter) OVER(PARTITION BY classification) AS decimal)  
            * 100 AS int) AS pct
FROM solar_system_20;

