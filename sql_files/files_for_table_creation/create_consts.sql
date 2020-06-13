/*
    Author:     Karen Warmbein 
    Date:       May 27, 2020
    Updated:    June 12, 2020
    Purpose:    Create constellations data tables                
    Note:       None
*/

CREATE TABLE IF NOT EXISTS circ_consts ( 
    const_name TEXT, 
    area INT
);

CREATE TABLE sum_consts ( 
    const_name TEXT, 
    main_stars INT
);

CREATE TABLE IF NOT EXISTS fall_consts ( 
    const_name TEXT, 
    area INT,
    main_stars INT
);

INSERT INTO circ_consts(const_name, area)
VALUES ('Cassiopeia', 598),
    ('Ursa Major', 1280),
    ('Ursa Minor', 256),
    ('Draco', 1083),
    ('Cepheus', 588);

 INSERT INTO sum_consts(const_name, main_stars)   
 VALUES ('Cygnus', 9),
    ('Lyra', 5),
    ('Ursa Major', 20),
    ('Scorpius', 18),
    ('Andromeda', 16),
    ('Cassiopeia', 5);


INSERT INTO fall_consts(const_name, area, main_stars)   
 VALUES ('Andromeda', 722, 16),
    ('Cassiopeia', 598, 5),
    ('Cephius', 588, 7),
    ('Cetus', 1231, 14),
    ('Ursa Major', 1280, 20),
    ('Ursa Minor', 256, 7);

