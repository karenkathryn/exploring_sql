/*
    Author:     Karen Warmbein 
    Date:       August 22, 2020
    Purpose:    Queries that are used for modifying the solar_system_20 data table                
    Note:       None
*/

-- View the table
SELECT * 
FROM solar_system_20
LIMIT 1;

-- Write a SQL statement to add a column 'distance' to the table locations.
ALTER TABLE solar_system_20
ADD distance INT;

-- Write a SQL statement to change the name of the column 'distance' to 
-- 'distance_from_Sun', keeping the same size and data type and size.
ALTER TABLE solar_system_20 
RENAME distance TO distance_from_Sun;

-- Write a SQL statement to change the data type of the column 'distance_from_Sun' from an 
-- INT to a FLOAT
ALTER TABLE solar_system_20
ALTER distance_from_Sun TYPE FLOAT;

-- Write a SQL statement to drop the column 'distance_from_Sun'.
ALTER TABLE solar_system_20
DROP distance_from_Sun;