/*
    Author:     Karen Warmbein 
    Date:       July 23, 2020
    Purpose:    The purpose of this file is to solve an algorithmic problem            
    Note:       Write a query to display the records which have 3 or more 
                consecutive rows and the amount of sales is equal to or more than
                the mean
*/

SELECT
    s.months
    , s.net_sales
FROM 
    (SELECT months
    , net_sales
    , LAG(net_sales, 2) OVER(ORDER BY months) before_month
    , LAG(net_sales, 1) OVER(ORDER BY months) last_month
    -- current month sales is net_sales
    , LEAD(net_sales, 1) OVER(ORDER BY months) second_month
    , LEAD(net_sales, 2) OVER(ORDER BY months) third_month
    FROM sales) s
WHERE (s.net_sales>=7500 AND s.second_month>=7500 AND s.third_month>=7500) 
      OR (s.before_month>=7500 AND s.last_month>=7500 AND s.net_sales>=7500) 
      OR (s.last_month>=7500 AND s.net_sales>=7500 AND s.second_month>=7500)

