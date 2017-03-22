ALTER TABLE `DBNAME`.`offer` 
ADD CONSTRAINT `fk_offer_1`
  FOREIGN KEY (`vendor`)
  REFERENCES `DBNAME`.`vendor` (`nr`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_offer_2`
  FOREIGN KEY (`product`)
  REFERENCES `DBNAME`.`product` (`nr`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `DBNAME`.`product` 
ADD CONSTRAINT `fk_product_1`
  FOREIGN KEY (`producer`)
  REFERENCES `DBNAME`.`producer` (`nr`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `DBNAME`.`productfeatureproduct` 
ADD CONSTRAINT `fk_productfeatureproduct_1`
  FOREIGN KEY (`product`)
  REFERENCES `DBNAME`.`product` (`nr`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `DBNAME`.`producttypeproduct` 
ADD CONSTRAINT `fk_producttypeproduct_1`
  FOREIGN KEY (`product`)
  REFERENCES `DBNAME`.`product` (`nr`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `DBNAME`.`review` 
ADD CONSTRAINT `fk_review_1`
  FOREIGN KEY (`product`)
  REFERENCES `DBNAME`.`product` (`nr`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_review_2`
  FOREIGN KEY (`person`)
  REFERENCES `DBNAME`.`person` (`nr`)
  ON DELETE NO ACTION			   
  ON UPDATE NO ACTION;			   