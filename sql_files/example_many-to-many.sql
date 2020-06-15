/*
    Author:     Karen Warmbein 
    Date:       June 14, 2020
    Purpose:    Queryies that are used for summer observations data tables                
    Note:       None
*/

SELECT *
FROM wrong_table
WHERE name_const = 'Scorpius' OR name_const = 'Pisces';

SELECT *
FROM wrong_table
WHERE name_obs = 'The Moon';

SELECT Count(*) 
FROM wrong_table_2
WHERE name_obs_1 = 'The Moon' OR name_obs_2 = 'The Moon';

SELECT o.ds_name 
    , COUNT(o.ds_name)
FROM sum_consts_obs AS c
INNER JOIN rel_obs AS r ON c.id = r.id_sum_const
INNER JOIN sum_obs AS o ON r.id_ds = o.id
WHERE ds_name = 'The Moon'
GROUP BY o.ds_name;
