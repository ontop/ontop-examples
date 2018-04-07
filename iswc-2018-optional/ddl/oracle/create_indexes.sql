CREATE INDEX offer_product_idx ON "offer" ("product")  TABLESPACE users;

CREATE INDEX offer_producer_idx ON "offer" ("producer");
CREATE INDEX offer_vendor_idx ON "offer" ("vendor");

CREATE INDEX ptp_product_idx ON "producttypeproduct" ("product");
CREATE INDEX ptp_producttype_idx ON "producttypeproduct" ("productType");

CREATE INDEX review_product_idx ON "review" ("product");
CREATE INDEX review_producer_idx ON "review" ("producer");
CREATE INDEX review_person_idx ON "review" ("person");
