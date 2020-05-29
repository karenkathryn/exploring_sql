/*
    Author:     Karen Warmbein 
    Date:       May 5, 2020
    Updated:    May 28, 2020
    Purpose:    Create planets data table and insert values                
    Note:       The unit of mass is earth mass; 
                the distsnce unit is the distance from Earth to the Sun
*/

CREATE TABLE IF NOT EXISTS planets (
    planet_no INT, 
    name TEXT, 
    color TEXT, 
    mass FLOAT,
    distance FLOAT
);

INSERT INTO planets(planet_no, name, color, mass, distance) VALUES
    (1, 'Mercury', 'gray', 0.6, 0.39),
    (2, 'Venus', 'yellow', 0.8, 0.72),
    (3, 'Earth', 'blue', 1, 1),
    (4, 'Mars', 'red', 0.1, 1.52),
    (5, 'Jupiter', 'orange', 318, 5.20),
    (6, 'Saturn', 'light yellow', 95, 9.53),
    (7, 'Uranus', 'light blue', 15, 19.19),
    (8, 'Neptune', 'dark blue', 17, 30.06);