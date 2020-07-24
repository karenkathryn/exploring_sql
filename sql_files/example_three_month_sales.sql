/*
    Author:     Karen Warmbein 
    Date:       July 23, 2020
    Purpose:    The purpose of this file is to solve an algorithmic problem            
    Note:       Write a query to display the records which have 3 or more 
                consecutive rows and the amount of sales is more than 5000(inclusive)
*/

SELECT
    s.months
    , s.net_sales
FROM 
    (SELECT months
    , net_sales
    , LAG(net_sales, 2) OVER(ORDER BY months) before_month
    , LAG(net_sales, 1) OVER(ORDER BY months) last_month
    , LEAD(net_sales, 1) OVER(ORDER BY months) second_month
    , LEAD(net_sales, 2) OVER(ORDER BY months) third_month
    FROM sales) s
WHERE (s.net_sales>=5000 AND s.second_month>=5000 AND s.third_month>=5000) 
      OR (s.before_month>=5000 AND s.last_month>=5000 AND s.net_sales>=5000) 
      OR (s.last_month>=5000 AND s.second_month>=5000 AND s.net_sales>=5000)
