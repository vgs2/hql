CREATE EXTERNAL TABLE customer (
    c_custkey int,
    c_name string,
    c_adress string,
    c_city string,
    c_nation string,
    c_region string,
    c_phone string,
    c_mktsegment string) 
row format delimited 
fields terminated by '|' 
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION "s3://hive-bucket-tg-vitor/sf1/customer/";

CREATE EXTERNAL TABLE part (
    p_partkey int, 
    p_name string, 
    p_mfgr string, 
    p_category string, 
    p_brand string, 
    p_color string, 
    p_type string, 
    p_size int, 
    p_container string) 
row format delimited 
fields terminated by '|' 
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION "s3://hive-bucket-tg-vitor/sf1/part/";

CREATE EXTERNAL TABLE supplier (
    s_suppkey int, 
    s_name string, 
    s_adress string, 
    s_city string, 
    s_nation string, 
    s_region string, 
    s_phone string)
row format delimited 
fields terminated by '|' 
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION "s3://hive-bucket-tg-vitor/sf1/supplier/";

CREATE EXTERNAL TABLE datee (
    d_datekey string, 
    d_date string, 
    d_dayofweek string, 
    d_month string, 
    d_year int, 
    d_yearmonthnum int, 
    d_yearmonth string, 
    d_daynuminweek int, 
    d_daynuminmonth int, 
    d_daynuminyear int, 
    d_monthnuminyear int, 
    d_weeknuminyear int, 
    d_sellingseason string, 
    d_lastdayinweek int, 
    d_lastdayinmonthfl int, 
    d_holidayfl int, 
    d_weekdayfl int) 
row format delimited 
fields terminated by '|' 
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION "s3://hive-bucket-tg-vitor/sf1/datee/";

CREATE EXTERNAL TABLE lineorder (
    lo_orderkey int, 
    lo_linenumber int, 
    lo_custkey int,
    lo_partkey int, 
    lo_suppkey int, 
    lo_orderdate string, 
    lo_orderpriority string, 
    lo_shippriority int, 
    lo_quantity int, 
    lo_extendedprice int, 
    lo_ordtotalprice int, 
    lo_discount int, 
    lo_revenue int, 
    lo_supplycost int, 
    lo_tax int, 
    lo_commitdate string, 
    lo_shipmode string)
row format delimited 
fields terminated by '|' 
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION "s3://hive-bucket-tg-vitor/sf1/lineorder/";
