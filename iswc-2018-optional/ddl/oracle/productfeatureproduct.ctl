OPTIONS (SKIP=1)
load data
infile '/share/bsbm_1000000products/bsbm_1000000products_productfeatureproduct.csv'
into table "productfeatureproduct"
fields terminated by "," optionally enclosed by '"'
("product","productFeature")
