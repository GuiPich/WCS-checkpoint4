-- MySQL Script generated by MySQL Workbench
-- Wed Feb  1 15:48:50 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema checkpoint4
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `checkpoint4` ;

-- -----------------------------------------------------
-- Schema checkpoint4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `checkpoint4` DEFAULT CHARACTER SET utf8 ;
USE `checkpoint4` ;

-- -----------------------------------------------------
-- Table `checkpoint4`.`profil`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `checkpoint4`.`profil` ;

CREATE TABLE IF NOT EXISTS `checkpoint4`.`profil` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `bio` VARCHAR(45) NOT NULL,
  `photo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `checkpoint4`.`techno`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `checkpoint4`.`techno` ;

CREATE TABLE IF NOT EXISTS `checkpoint4`.`techno` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `checkpoint4`.`projet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `checkpoint4`.`projet` ;

CREATE TABLE IF NOT EXISTS `checkpoint4`.`projet` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `photo` VARCHAR(150) NOT NULL,
  `description` TEXT(250) NOT NULL,
  `lien` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `checkpoint4`.`projet_techno`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `checkpoint4`.`projet_techno` ;

CREATE TABLE IF NOT EXISTS `checkpoint4`.`projet_techno` (
  `id_projet` INT NOT NULL,
  `id_techno` INT NOT NULL,
  INDEX `id_projet_idx` (`id_projet` ASC) VISIBLE,
  INDEX `id_techno_idx` (`id_techno` ASC) VISIBLE,
  CONSTRAINT `id_projet`
    FOREIGN KEY (`id_projet`)
    REFERENCES `checkpoint4`.`projet` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_techno`
    FOREIGN KEY (`id_techno`)
    REFERENCES `checkpoint4`.`techno` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
