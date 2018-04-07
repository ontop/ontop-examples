OPTIONS (SKIP=1)
load data
infile '/share/bsbm_1000000products/bsbm_1000000products_productfeature.csv'
into table "productfeature"
fields terminated by "," optionally enclosed by '"'
("nr","label","comment" CHAR(4000),  "publisher", "publishDate" DATE "YYYY-MM-DD")