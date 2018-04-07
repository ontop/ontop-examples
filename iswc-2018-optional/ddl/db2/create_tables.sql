--
-- CREATE DATABASE bsbm250k;

-- CREATE SCHEMA PUBLIC

-- SET CURRENT SCHEMA PUBLIC

-- CREATE TABLE test(id int PRIMARY KEY NOT NULL)

-- CREATE TABLE producttype(nr          int PRIMARY KEY NOT NULL, label       varchar(100),  comment     varchar(2000),  parent      int,  publisher   int,  publishDate date)

CONNECT TO BSBM1M;

-- CREATE DATABASE bsbm1000;
-- CONNECT TO 'bsbm_1000000products'

CREATE TABLE producttype
(
  nr          int PRIMARY KEY NOT NULL,
  label       varchar(100),
  comment     varchar(2000),
  parent      int,
  publisher   int,
  publishDate date
);

CREATE TABLE productfeature
(
  nr          int PRIMARY KEY NOT NULL,
  label       varchar(100),
  comment     varchar(2000),
  publisher   int,
  publishDate date
);

CREATE TABLE producer
(
  nr          int PRIMARY KEY NOT NULL,
  label       varchar(100),
  comment     varchar(2000),
  homepage    varchar(100),
  country     char(2),
  publisher   int,
  publishDate date
);

CREATE TABLE person
(
  nr           int PRIMARY KEY NOT NULL,
  name         varchar(30),
  mbox_sha1sum char(40),
  country      char(2),
  publisher    int,
  publishDate  date
);

CREATE TABLE product
(
  nr           int PRIMARY KEY NOT NULL,
  label        varchar(100),
  comment      varchar(2000),
  producer     int,
  propertyNum1 int,
  propertyNum2 int,
  propertyNum3 int,
  propertyNum4 int,
  propertyNum5 int,
  propertyNum6 int,
  propertyTex1 varchar(250),
  propertyTex2 varchar(250),
  propertyTex3 varchar(250),
  propertyTex4 varchar(250),
  propertyTex5 varchar(250),
  propertyTex6 varchar(250),
  publisher    int,
  publishDate  date
);

CREATE TABLE vendor
(
  nr          int PRIMARY KEY NOT NULL,
  label       varchar(100),
  comment     varchar(2000),
  homepage    varchar(100),
  country     char(2),
  publisher   int,
  publishDate date
);

CREATE TABLE producttypeproduct
(
  product     int NOT NULL,
  productType int NOT NULL,
  CONSTRAINT producttypeproduct_pk PRIMARY KEY (product, productType),
  CONSTRAINT producttypeproduct_product_nr_fk FOREIGN KEY (product) REFERENCES product (nr),
  CONSTRAINT producttypeproduct_producttype_nr_fk FOREIGN KEY (productType) REFERENCES producttype (nr)
);

CREATE TABLE productfeatureproduct
(
  product int NOT NULL,
  productFeature int NOT NULL,
  CONSTRAINT productfeatureproduct_pk PRIMARY KEY (product, productFeature),
  CONSTRAINT productfeatureproduct_product_nr_fk FOREIGN KEY (product) REFERENCES product (nr),
  CONSTRAINT productfeatureproduct_productfeature_nr_fk FOREIGN KEY (productFeature) REFERENCES productfeature (nr)
);

CREATE TABLE review
(
  nr          int PRIMARY KEY NOT NULL,
  product     int,
  producer    int,
  person      int,
  -- reviewDate  timestamp,
  reviewDate  varchar(20),
  title       varchar(200),
  text        varchar(20000),
  language    char(2),
  rating1     int,
  rating2     int,
  rating3     int,
  rating4     int,
  publisher   int,
  publishDate date,
  CONSTRAINT review_product_nr_fk FOREIGN KEY (product) REFERENCES product (nr),
  CONSTRAINT review_producer_nr_fk FOREIGN KEY (producer) REFERENCES producer (nr),
  CONSTRAINT review_person_nr_fk FOREIGN KEY (person) REFERENCES person (nr)
);

CREATE TABLE offer
(
  nr           int PRIMARY KEY NOT NULL,
  product      int,
  producer     int,
  vendor       int,
  price        decimal(10,2),
--   validFrom    timestamp,
--   validTo      timestamp,
  validFrom    varchar(20),
  validTo      varchar(20),
  deliveryDays int,
  offerWebpage varchar(100),
  publisher    int,
  publishDate  date,
  CONSTRAINT offer_product_nr_fk FOREIGN KEY (product) REFERENCES product (nr),
  CONSTRAINT offer_producer_nr_fk FOREIGN KEY (producer) REFERENCES producer (nr),
  CONSTRAINT offer_vendor_nr_fk FOREIGN KEY (vendor) REFERENCES vendor (nr)
);