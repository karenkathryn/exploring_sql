/*
    Author:     Karen Warmbein 
    Date:       August 2020
    Purpose:    The purpose of this file is to automate a function in PostgreSQL
*/

CREATE FUNCTION nth_largest_diameter(N INT) 
RETURNS INT
LANGUAGE plpgsql
AS 
'
DECLARE 
  N int := N - 1 ;
  return_value int;

BEGIN
  SELECT diameter
  INTO return_value
  FROM solar_system_20
  ORDER BY diameter 
  LIMIT 1 OFFSET N;
  
RETURN return_value;

END;
'