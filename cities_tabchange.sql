ALTER TABLE `geodata`.`_cities` 
ADD COLUMN `title` VARCHAR(150) NULL DEFAULT NULL AFTER `title_cz`,
CHANGE COLUMN `city_id` `city_id` INT NOT NULL AUTO_INCREMENT ,
ADD PRIMARY KEY (`city_id`),
ADD INDEX `fk__cities_country_id_idx` (`country_id` ASC) VISIBLE,
ADD INDEX `fk__cities_region_id_idx` (`region_id` ASC) VISIBLE;
;
ALTER TABLE `geodata`.`_cities` 
ADD CONSTRAINT `fk__cities_country_id`
  FOREIGN KEY (`country_id`)
  REFERENCES `geodata`.`_countries` (`country_id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk__cities_region_id`
  FOREIGN KEY (`region_id`)
  REFERENCES `geodata`.`_regions` (`region_id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
