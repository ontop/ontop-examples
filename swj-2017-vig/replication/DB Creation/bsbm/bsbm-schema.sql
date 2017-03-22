CREATE TABLE "offer" (
  "nr" int(11) NOT NULL,
  "product" int(11) ,
  "producer" int(11) ,
  "vendor" int(11) ,
  "price" double ,
  "validFrom" datetime ,
  "validTo" datetime ,
  "deliveryDays" int(11) ,
  "offerWebpage" varchar(100) ,
  "publisher" int(11) ,
  "publishDate" date ,
  PRIMARY KEY ("nr"),
  KEY "product" ("product") USING BTREE,
  KEY "vendor" ("vendor") USING BTREE
);

CREATE TABLE "person" (
  "nr" int(11) NOT NULL,
  "name" varchar(30) ,
  "mbox_sha1sum" char(40) ,
  "country" char(25) ,
  "publisher" int(11) DEFAULT NULL,
  "publishDate" date DEFAULT NULL,
  PRIMARY KEY ("nr")
);

CREATE TABLE "producer" (
  "nr" int(11) NOT NULL,
  "label" varchar(100) ,
  "comment" varchar(2000) ,
  "homepage" varchar(100) ,
  "country" char(25) ,
  "publisher" int(11) DEFAULT NULL,
  "publishDate" date DEFAULT NULL,
  PRIMARY KEY ("nr")
);

CREATE TABLE "product" (
  "nr" int(11) NOT NULL,
  "label" varchar(100) ,
  "comment" varchar(2000) ,
  "producer" int(11) DEFAULT NULL,
  "propertyNum1" int(11) DEFAULT NULL,
  "propertyNum2" int(11) DEFAULT NULL,
  "propertyNum3" int(11) DEFAULT NULL,
  "propertyNum4" int(11) DEFAULT NULL,
  "propertyNum5" int(11) DEFAULT NULL,
  "propertyNum6" int(11) DEFAULT NULL,
  "propertyTex1" varchar(250) ,
  "propertyTex2" varchar(250) ,
  "propertyTex3" varchar(250) ,
  "propertyTex4" varchar(250) ,
  "propertyTex5" varchar(250) ,
  "propertyTex6" varchar(250) ,
  "publisher" int(11) DEFAULT NULL,
  "publishDate" date DEFAULT NULL,
  PRIMARY KEY ("nr"),
  KEY "producer" ("producer") USING BTREE
);

CREATE TABLE "productfeature" (
  "nr" int(11) NOT NULL,
  "label" varchar(100) ,
  "comment" varchar(2000) ,
  "publisher" int(11) DEFAULT NULL,
  "publishDate" date DEFAULT NULL,
  PRIMARY KEY ("nr")
);

CREATE TABLE "productfeatureproduct" (
  "product" int(11) NOT NULL,
  "productFeature" int(11) NOT NULL,
  PRIMARY KEY ("product","productFeature")
);

CREATE TABLE "producttype" (
  "nr" int(11) NOT NULL,
  "label" varchar(100) ,
  "comment" varchar(2000) ,
  "parent" int(11) DEFAULT NULL,
  "publisher" int(11) DEFAULT NULL,
  "publishDate" date DEFAULT NULL,
  PRIMARY KEY ("nr")
);

CREATE TABLE "producttypeproduct" (
  "product" int(11) NOT NULL,
  "productType" int(11) NOT NULL,
  PRIMARY KEY ("product","productType")
);

CREATE TABLE "review" (
  "nr" int(11) NOT NULL,
  "product" int(11) DEFAULT NULL,
  "producer" int(11) DEFAULT NULL,
  "person" int(11) DEFAULT NULL,
  "reviewDate" datetime DEFAULT NULL,
  "title" varchar(200) ,
  "text" text ,
  "language" char(25) ,
  "rating1" int(11) DEFAULT NULL,
  "rating2" int(11) DEFAULT NULL,
  "rating3" int(11) DEFAULT NULL,
  "rating4" int(11) DEFAULT NULL,
  "publisher" int(11) DEFAULT NULL,
  "publishDate" date DEFAULT NULL,
  PRIMARY KEY ("nr"),
  KEY "product" ("product") USING BTREE,
  KEY "person" ("person") USING BTREE
);

CREATE TABLE "vendor" (
  "nr" int(11) NOT NULL,
  "label" varchar(100) ,
  "comment" varchar(2000) ,
  "homepage" varchar(100) ,
  "country" char(25) ,
  "publisher" int(11) DEFAULT NULL,
  "publishDate" date DEFAULT NULL,
  PRIMARY KEY ("nr")
);
