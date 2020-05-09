/*
    Author:     Karen Warmbein 
    Date:       May 9, 2020
    Purpose:    Create a data table for the 20 largest objects in the Solar System             
    Note:       None
*/

CREATE TABLE IF NOT EXISTS solar_system_20 (
    num INT, 
    ss_name TEXT, 
    diameter INT, 
    classification TEXT,
    ss_location TEXT
);