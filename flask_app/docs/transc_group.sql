-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_transcripcion
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `db_transcripcion` ;

-- -----------------------------------------------------
-- Schema db_transcripcion
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_transcripcion` DEFAULT CHARACTER SET utf8 ;
USE `db_transcripcion` ;

-- -----------------------------------------------------
-- Table `db_transcripcion`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_transcripcion`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(255) NULL,
  `last_name` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_transcripcion`.`registros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_transcripcion`.`registros` (
  `id_registros` INT NOT NULL AUTO_INCREMENT,
  `usuarios_id` INT NOT NULL,
  `registro` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id_registros`),
  INDEX `fk_registros_usuarios_idx` (`usuarios_id` ASC) VISIBLE,
  CONSTRAINT `fk_registros_usuarios`
    FOREIGN KEY (`usuarios_id`)
    REFERENCES `db_transcripcion`.`usuarios` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
