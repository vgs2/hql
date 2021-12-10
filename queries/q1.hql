SELECT
SUM(lineorder.lo_extendedprice*lineorder.lo_discount) AS revenue
FROM lineorder 
JOIN  datee ON lineorder.lo_orderdate = datee.d_datekey
WHERE datee.d_year = 1993
AND lineorder.lo_discount between 1 AND 3
AND lineorder.lo_quantity < 25 LIMIT 5;

