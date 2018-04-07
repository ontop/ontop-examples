OPTIONS (SKIP=1)
load data
infile '/share/bsbm_1000000products/bsbm_1000000products_offer.csv'
into table "offer"
fields terminated by "," optionally enclosed by '"'
("nr","product","producer","vendor","price","validFrom" TIMESTAMP 'YYYY-MM-DD HH24:MI:SS',"validTo" TIMESTAMP 'YYYY-MM-DD HH24:MI:SS', "deliveryDays","offerWebpage","publisher","publishDate" DATE "YYYY-MM-DD")