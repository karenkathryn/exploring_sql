/*
    Author:     Karen Warmbein 
    Date:       July 19, 2020
    Purpose:    Create sales table for food stand on Mars              
    Note:       None
*/

CREATE TABLE sales ( 
    months INT,
    net_sales FLOAT
);

INSERT INTO sales(months, net_sales)   
VALUES (1, 8964),
    (2, 4212),
    (3, 5618),
    (4, 7319),
    (5, 9282);