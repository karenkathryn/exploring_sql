/*
    Author:     Karen Warmbein 
    Date:       May 27, 2020
    Purpose:    Create circumpolar constellations data table                
    Note:       None
*/

CREATE TABLE IF NOT EXISTS circ_consts ( 
    const_name TEXT, 
    area INT
);

CREATE TABLE IF NOT EXISTS sum_consts ( 
    const_name TEXT, 
    main_stars INT
);

INSERT INTO circ_consts(const_name, area)
VALUES ('Cassiopea', 598),
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
    ('Cassiopea', 5);