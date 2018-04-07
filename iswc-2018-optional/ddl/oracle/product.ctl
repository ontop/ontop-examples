OPTIONS (SKIP=1)
load data
infile '/share/bsbm_1000000products/bsbm_1000000products_product.csv'
into table "product"
fields terminated by "," optionally enclosed by '"'
("nr","label","comment" CHAR(4000),"producer","propertyNum1","propertyNum2","propertyNum3","propertyNum4","propertyNum5","propertyNum6","propertyTex1","propertyTex2","propertyTex3","propertyTex4","propertyTex5","propertyTex6","publisher","publishDate"  DATE "YYYY-MM-DD")
