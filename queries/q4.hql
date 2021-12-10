SELECT datee.d_year, customer.c_nation, sum(lineorder.lo_revenue -
lineorder.lo_supplycost) as profit from
lineorder
JOIN customer ON lineorder.lo_custkey = customer.c_custkey
JOIN supplier ON lineorder.lo_suppkey = supplier.s_suppkey
JOIN part ON lineorder.lo_partkey = part.p_partkey
JOIN datee ON lineorder.lo_orderdate = datee.d_datekey
WHERE customer.c_region = 'AMERICA'
and supplier.s_region = 'AMERICA'
and (part.p_mfgr = 'MFGR#1' or part.p_mfgr = 'MFGR#2')
GROUP BY datee.d_year, customer.c_nation
ORDER BY datee.d_year, customer.c_nation
LIMIT 5;
