SELECT * 
FROM solar_system_20 
WHERE diameter > (SELECT AVG(diameter) 
        FROM solar_system_20);