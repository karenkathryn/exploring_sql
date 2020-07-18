/*
    Author:     Karen Warmbein 
    Date:       July 18, 2020
    Purpose:    The purpose of this file is to experiement with lag and lead functionality            
    Note:       None
*/


SELECT ss_name
    , diameter
    , classification
    , lag(ss_name, 1) over w as "previous"
    , lead(ss_name, 1) over w as "next"
FROM solar_system_20
window w as (ORDER BY diameter);
