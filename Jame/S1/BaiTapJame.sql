CREATE TABLE `class` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `teacher` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `age` INT NULL,
  `country` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));

