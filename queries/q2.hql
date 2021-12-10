SELECT 
SUM(lineorder.lo_revenue), datee.d_year, part.p_brand
FROM lineorder JOIN datee ON lineorder.lo_orderdate = datee.d_datekey 
JOIN part ON lineorder.lo_partkey = part.p_partkey
JOIN supplier ON lineorder.lo_suppkey = supplier.s_suppkey
WHERE part.p_category = 'MFGR#12'
AND supplier.s_regiON = 'AMERICA'
GROUP BY datee.d_year, part.p_brand
ORDER BY datee.d_year, part.p_brand
LIMIT 5;

