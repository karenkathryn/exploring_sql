SELECT 
    classification,
    count(*)
FROM solar_system_20
GROUP BY classification
HAVING count(*) > 2;

