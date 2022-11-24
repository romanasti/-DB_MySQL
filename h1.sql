-- Task 1
-- Create a table with mobile phones using a graphical interface.

CREATE TABLE `homework_1`.`mobile_phones` (
  `id_mobile_phones` INT NOT NULL AUTO_INCREMENT,
  `name_mobile_phones` VARCHAR(45) NOT NULL,
  `manufacturer_mobile_phones` VARCHAR(45) NOT NULL,
  `price_mobile_phones` DECIMAL NOT NULL,
  `quantity_mobile_phones` INT NOT NULL,
  PRIMARY KEY (`id_mobile_phones`));

  -- Task 2
  -- Fill the database with data

INSERT INTO `homework_1`.`mobile_phones` (`id_mobile_phones`, `name_mobile_phones`, `manufacturer_mobile_phones`, `price_mobile_phones`, `quantity_mobile_phones`) VALUES ('1', 'C11', 'Realme', '7999.00', '5');
INSERT INTO `homework_1`.`mobile_phones` (`id_mobile_phones`, `name_mobile_phones`, `manufacturer_mobile_phones`, `price_mobile_phones`, `quantity_mobile_phones`) VALUES ('2', 'Y21', 'Vivo', '13999.00', '7');
INSERT INTO `homework_1`.`mobile_phones` (`id_mobile_phones`, `name_mobile_phones`, `manufacturer_mobile_phones`, `price_mobile_phones`, `quantity_mobile_phones`) VALUES ('3', '1SE 5030D', 'Alcatel', '9990.00', '1');
INSERT INTO `homework_1`.`mobile_phones` (`id_mobile_phones`, `name_mobile_phones`, `manufacturer_mobile_phones`, `price_mobile_phones`, `quantity_mobile_phones`) VALUES ('4', '6630L Magic L', 'BQ', '14990.00', '6');
INSERT INTO `homework_1`.`mobile_phones` (`id_mobile_phones`, `name_mobile_phones`, `manufacturer_mobile_phones`, `price_mobile_phones`, `quantity_mobile_phones`) VALUES ('5', 'A48', 'Itel', '4990.00', '4');
INSERT INTO `homework_1`.`mobile_phones` (`id_mobile_phones`, `name_mobile_phones`, `manufacturer_mobile_phones`, `price_mobile_phones`, `quantity_mobile_phones`) VALUES ('6', 'Redmi note 9T', 'Xiaomi', '15990.00', '1');
INSERT INTO `homework_1`.`mobile_phones` (`id_mobile_phones`, `name_mobile_phones`, `manufacturer_mobile_phones`, `price_mobile_phones`, `quantity_mobile_phones`) VALUES ('7', 'A100', 'Blackview', '14990.00', '4');
INSERT INTO `homework_1`.`mobile_phones` (`id_mobile_phones`, `name_mobile_phones`, `manufacturer_mobile_phones`, `price_mobile_phones`, `quantity_mobile_phones`) VALUES ('8', 'Galaxy S22 Ultra', 'Samsung', '104990.00', '2');
INSERT INTO `homework_1`.`mobile_phones` (`id_mobile_phones`, `name_mobile_phones`, `manufacturer_mobile_phones`, `price_mobile_phones`, `quantity_mobile_phones`) VALUES ('9', 'P50', 'Huawei', '49990.00', '6');
INSERT INTO `homework_1`.`mobile_phones` (`id_mobile_phones`, `name_mobile_phones`, `manufacturer_mobile_phones`, `price_mobile_phones`, `quantity_mobile_phones`) VALUES ('10', 'Galaxy Z Flip4', 'Samsung', '22990.00', '3');


  -- Task 3
  -- Display the name, manufacturer, and price for items that exceed 2

SELECT name_mobile_phones, manufacturer_mobile_phones, price_mobile_phones
FROM mobile_phones
WHERE quantity_mobile_phones > 2;

  -- Task 4
  -- Display the entire range of Samsung products

SELECT * FROM mobile_phones
WHERE manufacturer_mobile_phones = 'Samsung';

  

  