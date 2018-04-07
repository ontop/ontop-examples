OPTIONS (SKIP=1)
load data
infile '/share/bsbm_1000000products/bsbm_1000000products_person.csv'
into table "person"
fields terminated by "," optionally enclosed by '"'
("nr","name","mbox_sha1sum","country","publisher","publishDate" DATE "YYYY-MM-DD")