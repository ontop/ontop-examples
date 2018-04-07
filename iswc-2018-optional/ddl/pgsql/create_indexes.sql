CREATE INDEX offer_product ON offer (product);
CREATE INDEX offer_producer_nr_fk ON bsbm250k.offer (producer);
CREATE INDEX offer_vendor ON bsbm250k.offer (vendor);

CREATE INDEX producttypeproduct_producttype_nr_fk ON producttypeproduct (productType);

CREATE INDEX review_product ON review (product);
CREATE INDEX review_producer_nr_fk ON review (producer);
CREATE INDEX review_person ON review (person);
