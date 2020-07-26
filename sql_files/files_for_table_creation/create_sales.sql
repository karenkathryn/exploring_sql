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
    (5, 9282),
    (6, 9343),
    (7, 9123),
    (8, 8770),
    (9, 6780),
    (10, 4002),
    (11, 4999),
    (12, 5673),
    (13, 6002),
    (14, 7109),
    (15, 7994);
