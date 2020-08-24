/*
    Author:     Karen Warmbein 
    Date:       August 24, 2020
    Purpose:    The purpose of this file is to solve a problem, two ways 
                and introduce tuning queries            
*/


SELECT 
  id
  , score
  , DENSE_RANK() OVER (order by score DESC) "rank"
FROM user_info
WHERE user_role = 'observatory'
ORDER BY id;

SELECT 
    t1.score
    , COUNT(DISTINCT t2.score) as "rank"
FROM user_info t1, user_info t2
WHERE t1.score <= t2.score AND t1.user_role = 'observatory'
GROUP by t1.id, t1.score
ORDER BY t1.id;