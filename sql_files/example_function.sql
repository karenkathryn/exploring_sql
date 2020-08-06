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
  ORDER BY diameter DESC 
  LIMIT 1 OFFSET N;
  
RETURN return_value;

END;
'