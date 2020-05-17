/*
    Author:     Karen Warmbein 
    Date:       May 17, 2020
    Purpose:    Using a subquery to filter information             
    Note:       None
*/

SELECT * 
FROM solar_system_20 
WHERE diameter > (SELECT AVG(diameter) 
        FROM solar_system_20);