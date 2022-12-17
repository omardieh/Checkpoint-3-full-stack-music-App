-- MySQL Script generated by MySQL Workbench
-- Fri Dec 16 15:48:51 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`album`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`album` ;

CREATE TABLE IF NOT EXISTS `mydb`.`album` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `genre` VARCHAR(255) NOT NULL,
  `picture` VARCHAR(255) NOT NULL,
  `artist` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`track`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`track` ;

CREATE TABLE IF NOT EXISTS `mydb`.`track` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(128) NOT NULL,
  `youtube_url` VARCHAR(255) NOT NULL,
  `id_album` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `id_album`
    FOREIGN KEY (`id_album`)
    REFERENCES `mydb`.`album` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mydb`.`album`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`album` (`id`, `title`, `genre`, `picture`, `artist`) VALUES (1, 'Life is Good', 'Hip Hop', 'Life is good', 'Drake');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`track`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`track` (`id`, `title`, `youtube_url`, `id_album`) VALUES (1, 'Life is Good', 'www.youtube.com/lifeisgood', 1);

COMMIT;

