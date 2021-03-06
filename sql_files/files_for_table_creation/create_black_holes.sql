/*
    Author:     Karen Warmbein 
    Date:       May 5, 2020
    Updated:    May 28, 2020
    Purpose:    Create black holes data table and insert values               
    Note:       TODO: Add more data
*/

CREATE TABLE IF NOT EXISTS black_holes (
    num INT, 
    name TEXT, 
    base_mass INT, 
    power INT
);

INSERT INTO black_holes(num, name, base_mass, power)
VALUES
    (1, 'M104 - Sombrero Galaxy', 1, 9),
    (2, 'M31 - Andromeda Galaxy', 1, 8),
    (3, 'NGC 4889', 1, 10),
    (4, 'Cygnus X-1', 15, 0);