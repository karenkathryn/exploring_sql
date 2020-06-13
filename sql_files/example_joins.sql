/*
    Author:     Karen Warmbein 
    Date:       May 26, 2020
    Purpose:    Using joins to create a new view             
    Note:       results are omnivors
*/
-- Inner join
SELECT *
FROM circ_consts AS c
INNER JOIN sum_consts AS s
ON c.const_name = s.const_name;

-- Outer join
SELECT *
FROM circ_consts AS c
FULL OUTER JOIN sum_consts AS s
ON c.const_name = s.const_name;

-- Left Join
SELECT *
FROM circ_consts AS c
LEFT OUTER JOIN sum_consts AS s
ON c.const_name = s.const_name ;

-- Left Join
CREATE VIEW left_outer_join AS
    SELECT c.const_name, area, main_stars 
    FROM circ_consts AS c
    LEFT OUTER JOIN sum_consts AS s 
    ON c.const_name = s.const_name ;


-- double join (?)
SELECT const_name
    , ds_name
    , app_mag
FROM sum_consts_obs AS c
INNER JOIN rel_obs AS r ON c.id = r.id_sum_const 
INNER JOIN sum_obs AS o ON r.id_ds = o.id;
