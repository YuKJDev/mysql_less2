ALTER TABLE `geodata`.`_regions` 
ADD COLUMN `title` VARCHAR(150) NOT NULL AFTER `title_cz`,
CHANGE COLUMN `region_id` `region_id` INT NOT NULL AUTO_INCREMENT ,
ADD PRIMARY KEY (`region_id`);
ALTER TABLE `geodata`.`_regions` 
ADD INDEX `fk__regions_1_idx` (`country_id` ASC) VISIBLE;
;
ALTER TABLE `geodata`.`_regions` 
ADD CONSTRAINT `fk__regions_country_id`
  FOREIGN KEY (`country_id`)
  REFERENCES `geodata`.`_countries` (`country_id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
