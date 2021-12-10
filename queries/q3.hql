SELECT customer.c_nation, supplier.s_nation, datee.d_year, 
sum(lineorder.lo_revenue)
AS revenue FROM lineorder 
JOIN  customer ON lineorder.lo_custkey = customer.c_custkey
JOIN supplier ON lineorder.lo_suppkey = supplier.s_suppkey
JOIN datee ON lineorder.lo_orderdate = datee.d_datekey
WHERE customer.c_region = 'ASIA' and supplier.s_region = 'ASIA'
and datee.d_year >= 1992 and datee.d_year <= 1997
GROUP BY customer.c_nation, supplier.s_nation, datee.d_year
ORDER BY datee.d_year ASC, revenue DESC
LIMIT 5;
