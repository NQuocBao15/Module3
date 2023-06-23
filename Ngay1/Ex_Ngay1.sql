CREATE TABLE `products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) NULL,
  `price` BIGINT NULL,
  `description` VARCHAR(200) NULL,
  `delete_at` DATETIME NULL,
  `category_id` INT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `categories` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `deleted` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `orders` (
  `id` INT NOT NULL,
  `total` BIGINT NULL,
  `created_at` DATETIME NULL,
  `fullname` VARCHAR(45) NULL,
  `phone` VARCHAR(10) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `orderitems` (
  `id` INT NOT NULL,
  `id_order` INT NULL,
  `id_product` INT NULL,
  `price` BIGINT NULL,
  PRIMARY KEY (`id`));


ALTER TABLE `products` 
ADD CONSTRAINT `fk_idcategory`
  FOREIGN KEY (`category_id`)
  REFERENCES `c0323h1`.`categories` (`id`);
  

ALTER TABLE `orderitems` 
ADD CONSTRAINT `fk_orderitemss`
  FOREIGN KEY (`id_order`)
  REFERENCES `c0323h1`.`orders` (`id`);


ALTER TABLE `orderitems` 
ADD CONSTRAINT `fk_orderproduct`
  FOREIGN KEY (`id_product`)
  REFERENCES `c0323h1`.`products` (`id`)

