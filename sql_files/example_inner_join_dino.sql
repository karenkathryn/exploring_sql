/*
    Author:     Karen Warmbein 
    Date:       May 26, 2020
    Purpose:    Using inner join to create a new view             
    Note:       results are omnivors
*/
SELECT h.dino_name AS omnivores
FROM c_dinos AS c
INNER JOIN h_dinos AS h
ON h.dino_name = c.dino_name ;