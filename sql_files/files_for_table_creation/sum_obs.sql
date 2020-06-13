/*
    Author:     Karen Warmbein 
    Date:    June 12, 2020
    Purpose:    Create summer observations data tables                
    Note:       None
*/

CREATE TABLE sum_consts_obs ( 
    id INT,
    const_name TEXT, 
    main_stars INT
);

INSERT INTO sum_consts_obs(id, const_name, main_stars)   
VALUES (1, 'Cygnus', 9),
    (2, 'Lyra', 5),
    (3, 'Ursa Major', 20),
    (4, 'Scorpius', 18),
    (5, 'Andromeda', 16),
    (6, 'Cassiopeia', 5),
    (7, 'Pisces', 18);

CREATE TABLE IF NOT EXISTS sum_obs ( 
    id INT, 
    ds_name TEXT,
    app_mag INT
);

INSERT INTO sum_obs(id, ds_name, app_mag)  
VALUES (10, 'Ring Nebula', 8.8),
    (20, 'Andromeda Galaxy', 3.4),
    (30, 'M-80', 7.3),
    (40, 'The Moon', -12.7),
    (50, 'M-82', 8.4);

CREATE TABLE IF NOT EXISTS rel_obs ( 
    id_sum_const INT, 
    id_ds INT
);

INSERT INTO rel_obs(id_sum_const, id_ds)  
VALUES (2, 10),
    (5, 20),
    (4, 30),
    (4, 40),
    (3, 50), 
    (7, 40);