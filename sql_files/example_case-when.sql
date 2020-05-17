/*
    Author:     Karen Warmbein 
    Date:       May 17, 2020
    Purpose:    Using case-when statements to add information to the table             
    Note:       None
*/

SELECT *,
CASE 
    WHEN power > 0 THEN 'supermassive'
    ELSE 'stellar mass'
END AS bh_description
FROM black_holes;
