OPTIONS (SKIP=1)
load data
infile '/share/bsbm_1000000products/bsbm_1000000products_producttypeproduct.csv'
into table "producttypeproduct"
fields terminated by "," optionally enclosed by '"'
("product","productType")