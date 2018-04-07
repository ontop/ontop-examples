OPTIONS (SKIP=1)
load data
infile '/share/bsbm_1000000products/bsbm_1000000products_producttype.csv'
into table "producttype"
fields terminated by "," optionally enclosed by '"'
("nr","label","comment" CHAR(4000), "parent", "publisher", "publishDate" DATE "YYYY-MM-DD")