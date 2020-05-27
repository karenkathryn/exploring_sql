/*
    Author:     Karen Warmbein 
    Date:       May 9, 2020
    Purpose:    Insert values of 20 largest solar system objects into table                
    Note:       The unit of diameter is in miles
*/

INSERT INTO solar_system_20(num, ss_name, diameter, classification, ss_location) VALUES
    (1, 'Sun', 865000, 'star', 'close to the center of the Solar System'),
    (2, 'Jupiter', 88846, 'planet', '5th planet from the Sun'),
    (3, 'Saturn', 74900, 'planet', '6th planet from the Sun'),
    (4, 'Uranus', 31763, 'planet', '7th planet from the Sun'),
    (5, 'Neptune', 30779, 'planet', '8th planet from the Sun'),
    (6, 'Earth', 7926, 'planet', '3th planet from the Sun'),
    (7, 'Venus', 7521, 'planet', '2nd planet from the Sun'),
    (8, 'Mars', 4222, 'planet', '4th planet from the Sun'),
    (9, 'Ganymede', 3270, 'moon', 'orbiting Jupiter'),
    (10, 'Titan', 3200, 'moon', 'orbiting Saturn'),
    (11, 'Mercury', 3031, 'planet', 'closest planet to the Sun'),
    (12, 'Callisto', 2996, 'moon', 'orbiting Jupiter'),
    (13, 'Io', 2264, 'moon', 'orbiting Jupiter'),
    (14, 'The Moon', 2159, 'moon', 'orbiting Earth'),
    (15, 'Europa', 1940, 'moon', 'orbiting Jupiter'),
    (16, 'Triton', 1680, 'moon', 'orbiting Neptune'),
    (17, 'Pluto', 1473, 'dwarf planet', 'beyond Neptune'),
    (18, 'Eris', 1445, 'dwarf planet', 'beyond Neptune'),
    (19, 'Titana', 982, 'moon', 'orbiting Uranus'),
    (20, 'Rhea', 949, 'moon', 'orbiting Saturn');