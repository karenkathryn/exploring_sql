/*
    Author:     Karen Warmbein 
    Date:       August 24, 2020
    Purpose:    The purpose of this file is to solve a problem, two ways 
                and introduce tuning queries      
    Note:       Uses dense_rank function vs cross join  
                Problem: Rank the scores for the observatories.    
*/

--  simple select to view the data
SELECT *
FROM user_info
ORDER BY score DESC;

--  Planning Time: 0.147 ms
--  Execution Time: 0.225 ms
EXPLAIN ANALYZE
SELECT 
  id
  , score
  , DENSE_RANK() OVER (ORDER BY score DESC) "rank"
FROM user_info
WHERE user_role = 'observatory'
ORDER BY 3;


--  Planning Time: 0.323 ms
--  Execution Time: 0.818 ms
EXPLAIN ANALYZE
SELECT 
    t1.id
    , t1.score
    , COUNT(DISTINCT t2.score) as "rank"
FROM user_info t1, user_info t2
WHERE t1.score <= t2.score AND t1.user_role = 'observatory'
GROUP by t1.id, t1.score
ORDER BY 3 DESC;



