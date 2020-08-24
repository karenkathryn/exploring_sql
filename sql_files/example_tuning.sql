/*
    Author:     Karen Warmbein 
    Date:       August 24, 2020
    Purpose:    The purpose of this file is to solve a problem, two ways 
                and introduce tuning queries            
*/
SELECT 
  Score score
  , DENSE_RANK() OVER (order by Score DESC) 'rank'
FROM scores

SELECT 
    a.score
    , COUNT(DISTINCT b.score) as 'rank'
FROM scores a, scores b
WHERE a.score <= b.score
GROUP by a.id
ORDER BY 2