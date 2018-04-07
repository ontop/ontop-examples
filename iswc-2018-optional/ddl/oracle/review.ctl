OPTIONS (SKIP=6597904)
load data
infile '/share/bsbm_1000000products/bsbm_1000000products_review.csv'
APPEND
into table "review"
fields terminated by "," optionally enclosed by '"'
("nr","product","producer","person","reviewDate" TIMESTAMP 'YYYY-MM-DD HH24:MI:SS', "title", "text" CHAR(4000),"language","rating1","rating2","rating3","rating4","publisher","publishDate"  DATE "YYYY-MM-DD")