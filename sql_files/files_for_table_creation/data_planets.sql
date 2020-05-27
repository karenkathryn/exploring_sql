/*
    Author:     Karen Warmbein 
    Date:       May 5, 2020
    Purpose:    Insert values of planet data into table                
    Note:       The unit of mass is earth mass; the unit is the distance from Earth to the Sun
*/

INSERT INTO planets(planet_no, name, color, mass, distance) VALUES
    (1, 'Mercury', 'gray', 0.6, 0.39),
    (2, 'Venus', 'yellow', 0.8, 0.72),
    (3, 'Earth', 'blue', 1, 1),
    (4, 'Mars', 'red', 0.1, 1.52),
    (5, 'Jupiter', 'orange', 318, 5.20),
    (6, 'Saturn', 'light yellow', 95, 9.53),
    (7, 'Uranus', 'light blue', 15, 19.19),
    (8, 'Neptune', 'dark blue', 17, 30.06);