-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema a3engDados
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema a3engDados
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `a3engDados` DEFAULT CHARACTER SET utf8 ;
USE `a3engDados` ;

-- -----------------------------------------------------
-- Table `a3engDados`.`marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `a3engDados`.`marca` (
  `idmarca` INT NOT NULL AUTO_INCREMENT,
  `nome_marca` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  PRIMARY KEY (`idmarca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `a3engDados`.`modelo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `a3engDados`.`modelo` (
  `idmodelo` INT NOT NULL AUTO_INCREMENT,
  `marca_idmarca` INT NOT NULL,
  `modelo_nome` VARCHAR(45) NULL,
  `modelo_fuel` VARCHAR(45) NULL,
  `modelo_gear` VARCHAR(45) NULL,
  `modelo_hp` VARCHAR(45) NULL,
  `modelo_year` VARCHAR(45) NULL,
  PRIMARY KEY (`idmodelo`, `marca_idmarca`),
  INDEX `fk_modelo_marca1_idx` (`marca_idmarca` ASC) VISIBLE,
  CONSTRAINT `fk_modelo_marca1`
    FOREIGN KEY (`marca_idmarca`)
    REFERENCES `a3engDados`.`marca` (`idmarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `a3engDados`.`carro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `a3engDados`.`carro` (
  `idcarros` INT NOT NULL AUTO_INCREMENT,
  `carro_price` VARCHAR(10) NULL,
  `mileage` VARCHAR(45) NULL,
  `modelo_idmodelo` INT NOT NULL,
  PRIMARY KEY (`idcarros`, `modelo_idmodelo`),
  INDEX `fk_carros_modelo1_idx` (`modelo_idmodelo` ASC) VISIBLE,
  CONSTRAINT `fk_carros_modelo1`
    FOREIGN KEY (`modelo_idmodelo`)
    REFERENCES `a3engDados`.`modelo` (`idmodelo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
