-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema carsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `carsdb` ;

-- -----------------------------------------------------
-- Schema carsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `carsdb` DEFAULT CHARACTER SET utf8 ;
USE `carsdb` ;

-- -----------------------------------------------------
-- Table `car`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `car` ;

CREATE TABLE IF NOT EXISTS `car` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `year_made` INT NOT NULL,
  `make` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `hp` INT UNSIGNED NOT NULL,
  `tq` INT UNSIGNED NOT NULL,
  `zero_to_sixty` DOUBLE UNSIGNED NOT NULL,
  `top_speed` INT UNSIGNED NOT NULL,
  `engine_installed` VARCHAR(150) NOT NULL,
  `mileage` INT UNSIGNED NOT NULL,
  `cost` DOUBLE UNSIGNED NOT NULL,
  `aftermarket_parts` VARCHAR(2500) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO carsuser@localhost;
 DROP USER carsuser@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'carsuser'@'localhost' IDENTIFIED BY 'resusrac';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'carsuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `car`
-- -----------------------------------------------------
START TRANSACTION;
USE `carsdb`;
INSERT INTO `car` (`id`, `year_made`, `make`, `model`, `category`, `color`, `hp`, `tq`, `zero_to_sixty`, `top_speed`, `engine_installed`, `mileage`, `cost`, `aftermarket_parts`) VALUES (1, 1984, 'Cheverolet', 'Monte Carlo SS', 'RWD Drag', 'White', 570, 600, 3.7, 178, '355ci SBC', 36000, 25000, 'Scat I-beam rods, wiseco 12cc domed pistons, crower ultrabeast stage 4 cam, 4-bolt splayed cap iron 350 block, 3.73 rear end with posi-trac, fully built th350c transmission');
INSERT INTO `car` (`id`, `year_made`, `make`, `model`, `category`, `color`, `hp`, `tq`, `zero_to_sixty`, `top_speed`, `engine_installed`, `mileage`, `cost`, `aftermarket_parts`) VALUES (2, 2012, 'Volkswagon', 'CC ', 'FWD Sleeper', 'White', 320, 470, 5.6, 170, '2.0L TSI Gen 1', 72000, 16999, '3-inch intake, turbo piping, 3 inch downpipe, exhaust dump valve, water/methanol injection, tuned to 30psi, Southbend stage 2 endurance clutch');
INSERT INTO `car` (`id`, `year_made`, `make`, `model`, `category`, `color`, `hp`, `tq`, `zero_to_sixty`, `top_speed`, `engine_installed`, `mileage`, `cost`, `aftermarket_parts`) VALUES (3, 2008, 'Volkswagon', 'Jetta Wolfsburg', 'FWD Daily', 'Charcoal', 207, 206, 6.3, 155, '2.0L TFSI', 124000, 4500, '');
INSERT INTO `car` (`id`, `year_made`, `make`, `model`, `category`, `color`, `hp`, `tq`, `zero_to_sixty`, `top_speed`, `engine_installed`, `mileage`, `cost`, `aftermarket_parts`) VALUES (4, 2010, 'Volkswagon', 'GTI Autobahn', 'FWD Sports', 'Charcoal', 207, 206, 6.4, 155, '2.0L TFSI', 65000, 20000, '');
INSERT INTO `car` (`id`, `year_made`, `make`, `model`, `category`, `color`, `hp`, `tq`, `zero_to_sixty`, `top_speed`, `engine_installed`, `mileage`, `cost`, `aftermarket_parts`) VALUES (5, 2011, 'Volkswagon', 'Jetta SEL', 'FWD Daily', 'White', 170, 177, 8.2, 155, '2.5L FSI', 44000, 15000, '');

COMMIT;

