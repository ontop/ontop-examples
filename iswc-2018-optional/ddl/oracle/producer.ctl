OPTIONS (SKIP=1)
load data
infile '/share/bsbm_1000000products/bsbm_1000000products_producer.csv'
into table "producer"
fields terminated by "," optionally enclosed by '"'
("nr","label","comment" CHAR(4000), "homepage","country","publisher","publishDate" DATE "YYYY-MM-DD")