
CREATE SCHEMA IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 ;
USE `test` ;

-- -----------------------------------------------------
-- Table `test`.`Categories_Film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test`.`Categories_Film` (
  `id_CTG` INT(11) NOT NULL,
  `Action` VARCHAR(45) NOT NULL,
  `Comédie` VARCHAR(45) NOT NULL,
  `Aventure` VARCHAR(45) NOT NULL,
  `Drame` VARCHAR(45) NOT NULL,
  `Horreur` VARCHAR(45) NOT NULL,
  `Policier` VARCHAR(45) NOT NULL,
  `Romance` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_CTG`))
 ;


-- -----------------------------------------------------
-- Table `test`.`info_Payements`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test`.`info_Payements` (
  `id_Payements` INT(11) NOT NULL AUTO_INCREMENT,
  `Date_Payement` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Description` VARCHAR(45) NOT NULL,
  `Montant` INT(11) NOT NULL,
  PRIMARY KEY (`id_Payements`))
 ;


-- -----------------------------------------------------
-- Table `test`.`info_film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test`.`info_film` (
  `id_film` INT(11) NOT NULL AUTO_INCREMENT,
  `TItre` VARCHAR(45) NOT NULL,
  `Date_de_sortie` VARCHAR(45) NOT NULL,
  `Durée` VARCHAR(45) NOT NULL,
  `réalisateur` VARCHAR(45) NOT NULL,
  `id_CTG` INT(11) NOT NULL,
  PRIMARY KEY (`id_film`),
  INDEX `id_CTG_idx` (`id_CTG` ASC),
  CONSTRAINT `id_CTG`
    FOREIGN KEY (`id_CTG`)
    REFERENCES `test`.`Categories_Film` (`id_CTG`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
 ;


-- -----------------------------------------------------
-- Table `test`.`info_utilisateur`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test`.`info_utilisateur` (
  `id_client` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `id_Payements` INT(11) NOT NULL,
  PRIMARY KEY (`id_client`),
  INDEX `id_Payements_idx` (`id_Payements` ASC),
  CONSTRAINT `id_Payements`
    FOREIGN KEY (`id_Payements`)
    REFERENCES `test`.`info_Payements` (`id_Payements`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
 ;


-- -----------------------------------------------------
-- Table `test`.`new_table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test`.`new_table` (
  `id_utilisateur` INT(11) NOT NULL,
  `id_film` INT(11) NOT NULL,
  `Date_Location` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Date_Retour` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Date_Location`),
  INDEX `id_utilisateur_idx` (`id_utilisateur` ASC),
  INDEX `id_film_idx` (`id_film` ASC),
  CONSTRAINT `id_film`
    FOREIGN KEY (`id_film`)
    REFERENCES `test`.`info_film` (`id_film`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_utilisateur`
    FOREIGN KEY (`id_utilisateur`)
    REFERENCES `test`.`info_utilisateur` (`id_client`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
 ;
