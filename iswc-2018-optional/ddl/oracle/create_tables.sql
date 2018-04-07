CREATE TABLE "producttype"
(
  "nr"          NUMBER PRIMARY KEY,
  "label"       VARCHAR2(100),
  "comment"     CLOB,
  "parent"      NUMBER,
  "publisher"   NUMBER,
  "publishDate" date
);

CREATE TABLE "productfeature"
(
  "nr"          int PRIMARY KEY NOT NULL,
  "label"       VARCHAR2(100),
  "comment"     CLOB,
  "publisher"   NUMBER,
  "publishDate" date
);

CREATE TABLE "producer"
(
  "nr"          int PRIMARY KEY NOT NULL,
  "label"       VARCHAR2(100),
  "comment"     CLOB,
  "homepage"    VARCHAR2(100),
  "country"     char(2),
  "publisher"   int,
  "publishDate" date
);

CREATE TABLE "person"
(
  "nr"           int PRIMARY KEY NOT NULL,
  "name"         VARCHAR2(30),
  "mbox_sha1sum" char(40),
  "country"      char(2),
  "publisher"    int,
  "publishDate"  date
);

CREATE TABLE "product"
(
  "nr"           int PRIMARY KEY NOT NULL,
  "label"        VARCHAR2(100),
  "comment"      CLOB,
  "producer"     int,
  "propertyNum1" int,
  "propertyNum2" int,
  "propertyNum3" int,
  "propertyNum4" int,
  "propertyNum5" int,
  "propertyNum6" int,
  "propertyTex1" VARCHAR2(250),
  "propertyTex2" VARCHAR2(250),
  "propertyTex3" VARCHAR2(250),
  "propertyTex4" VARCHAR2(250),
  "propertyTex5" VARCHAR2(250),
  "propertyTex6" VARCHAR2(250),
  "publisher"    int,
  "publishDate"  date
);

CREATE TABLE "vendor"
(
  "nr"          int PRIMARY KEY NOT NULL,
  "label"       VARCHAR2(100),
  "comment"     CLOB,
  "homepage"    VARCHAR2(100),
  "country"     char(2),
  "publisher"   int,
  "publishDate" date
);

CREATE TABLE "producttypeproduct"
(
  "product"     int NOT NULL,
  "productType" int NOT NULL,
  CONSTRAINT "ptp_pk" PRIMARY KEY ("product", "productType"),
  CONSTRAINT "ptp_product_nr_fk" FOREIGN KEY ("product") REFERENCES "product" ("nr"),
  CONSTRAINT "ptp_producttype_nr_fk" FOREIGN KEY ("productType") REFERENCES "producttype" ("nr")
);

CREATE TABLE "productfeatureproduct"
(
  "product" int NOT NULL,
  "productFeature" int NOT NULL,
  CONSTRAINT "pfp_pk" PRIMARY KEY ("product", "productFeature"),
  CONSTRAINT "pfp_product_fk" FOREIGN KEY ("product") REFERENCES "product" ("nr"),
  CONSTRAINT "pfp_productfeature_nr_fk" FOREIGN KEY ("productFeature") REFERENCES "productfeature" ("nr")
);

CREATE TABLE "review"
(
  "nr"          int PRIMARY KEY NOT NULL,
  "product"     int,
  "producer"    int,
  "person"      int,
  "reviewDate"  TIMESTAMP,
  "title"       VARCHAR2(200),
  "text"        CLOB,
  "language"    char(2),
  "rating1"     int,
  "rating2"     int,
  "rating3"     int,
  "rating4"     int,
  "publisher"   int,
  "publishDate" date,
  CONSTRAINT "review_product_nr_fk" FOREIGN KEY ("product") REFERENCES "product" ("nr"),
  CONSTRAINT "review_producer_nr_fk" FOREIGN KEY ("producer") REFERENCES "producer" ("nr"),
  CONSTRAINT "review_person_nr_fk" FOREIGN KEY ("person") REFERENCES "person" ("nr")
);

CREATE TABLE "offer"
(
  "nr"           int PRIMARY KEY NOT NULL,
  "product"      int,
  "producer"     int,
  "vendor"       int,
  "price"        decimal(10,2),
  "validFrom"    timestamp,
  "validTo"      timestamp,
  "deliveryDays" int,
  "offerWebpage" VARCHAR2(100),
  "publisher"    int,
  "publishDate"  date,
  CONSTRAINT "offer_product_nr_fk" FOREIGN KEY ("product") REFERENCES "product" ("nr"),
  CONSTRAINT "offer_producer_nr_fk" FOREIGN KEY ("producer") REFERENCES "producer" ("nr"),
  CONSTRAINT "offer_vendor_nr_fk" FOREIGN KEY ("vendor") REFERENCES "vendor" ("nr")
);