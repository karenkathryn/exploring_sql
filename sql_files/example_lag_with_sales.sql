/*
    Author:     Karen Warmbein 
    Date:       July 23, 2020
    Purpose:    The purpose of this file is to experiement with lag for the sales
                table            
    Note:       None
*/

WITH comparison AS (
    SELECT *
        , LAG(net_sales, 1) OVER (ORDER BY months) "previous_month_sales"
    FROM sales
)   
SELECT *
    , CAST ((net_sales - previous_month_sales)  / previous_month_sales * 100 AS INT) "vs_previous_month"
FROM comparison;
