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
LOCATION "s3://hive-bucket-tg-vitor/sf1/customer.tbl";
-- LOAD DATA LOCAL INPATH '/data/1_scale_new/customer.tbl' OVERWRITE INTO TABLE customer;
