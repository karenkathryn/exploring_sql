-- -- Finding duplicates from a table

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

