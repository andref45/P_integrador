
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`panelm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`panelm` (
  `idpanelm` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idpanelm`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vivienda_n`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vivienda_n` (
  `idvivenda_n` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvivenda_n`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`area`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`area` (
  `idarea` INT NOT NULL,
  `Descripción` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idarea`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi14`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi14` (
  `idvi14` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idvi14`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vivienda` (
  `id_vivienda` INT NOT NULL COMMENT 'Identificador de vivienda',
  `ciudad` INT NOT NULL COMMENT 'Ciudad',
  `panelm` INT NOT NULL COMMENT 'Panelm',
  `vivienda_n` INT NOT NULL COMMENT 'Vivienda',
  `area` INT NOT NULL COMMENT 'Area',
  `conglomerado` INT NOT NULL COMMENT 'Conglomerado',
  `vi14` INT NOT NULL COMMENT 'Forma de tenencia de la vivienda',
  PRIMARY KEY (`id_vivienda`),
  INDEX `fk_Vivienda_panelm1_idx` (`panelm` ASC) VISIBLE,
  INDEX `fk_Vivienda_Tipo_vivienda1_idx` (`vivienda_n` ASC) VISIBLE,
  INDEX `fk_Vivienda_area1_idx` (`area` ASC) VISIBLE,
  INDEX `fk_Vivienda_vi141_idx` (`vi14` ASC) VISIBLE,
  CONSTRAINT `fk_Vivienda_panelm1`
    FOREIGN KEY (`panelm`)
    REFERENCES `mydb`.`panelm` (`idpanelm`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_Tipo_vivienda1`
    FOREIGN KEY (`vivienda_n`)
    REFERENCES `mydb`.`vivienda_n` (`idvivenda_n`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_area1`
    FOREIGN KEY (`area`)
    REFERENCES `mydb`.`area` (`idarea`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_vi141`
    FOREIGN KEY (`vi14`)
    REFERENCES `mydb`.`vi14` (`idvi14`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`hogar_n`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`hogar_n` (
  `idhogar_n` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idhogar_n`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`periodo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`periodo` (
  `idperiodo` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idperiodo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Hogar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Hogar` (
  `id_hogar` INT NOT NULL COMMENT 'Identificador de hogar',
  `estrato` INT NOT NULL COMMENT 'Estratos',
  `fexp` DOUBLE NOT NULL COMMENT 'Factor de expansión',
  `upm` BIGINT(50) NOT NULL COMMENT 'Unidad Primaria de Muestreo',
  `hogar_n` INT NOT NULL,
  `id_vivienda` INT NOT NULL,
  `periodo` INT NOT NULL,
  INDEX `fk_Hogar_hogar_n1_idx` (`hogar_n` ASC) VISIBLE,
  INDEX `fk_Hogar_Vivienda2_idx` (`id_vivienda` ASC) VISIBLE,
  PRIMARY KEY (`id_hogar`),
  INDEX `fk_Hogar_periodo1_idx` (`periodo` ASC) VISIBLE,
  CONSTRAINT `fk_Hogar_hogar_n1`
    FOREIGN KEY (`hogar_n`)
    REFERENCES `mydb`.`hogar_n` (`idhogar_n`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_Vivienda2`
    FOREIGN KEY (`id_vivienda`)
    REFERENCES `mydb`.`Vivienda` (`id_vivienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_periodo1`
    FOREIGN KEY (`periodo`)
    REFERENCES `mydb`.`periodo` (`idperiodo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi1536`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi1536` (
  `idvi1536` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi1536`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi1535`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi1535` (
  `id1535` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id1535`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi1534`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi1534` (
  `idvi1534` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi1534`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi1533`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi1533` (
  `idvi1533` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi1533`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi1532`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi1532` (
  `idvi1532` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi1532`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi1531`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi1531` (
  `idvi1531` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi1531`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi1512`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi1512` (
  `idvi512` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi512`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi1511`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi1511` (
  `idvi1511` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi1511`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi144`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi144` (
  `idvi144` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi144`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi143`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi143` (
  `idvi143` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi143`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi13`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi13` (
  `idvi13` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi13`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi142`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi142` (
  `idvi142` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi142`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi12`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi12` (
  `idvi12` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi12`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi11`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi11` (
  `idvi11` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi11`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi102`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi102` (
  `idvi102` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi102`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi101`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi101` (
  `id101` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id101`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi10`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi10` (
  `idvi10` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvi10`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi09b`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi09b` (
  `idvio09b` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idvio09b`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi01`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi01` (
  `idvi01` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idvi01`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi02`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi02` (
  `idvi02` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idvi02`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi03a`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi03a` (
  `idvi03a` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idvi03a`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi03b`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi03b` (
  `idvi03b` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idvi03b`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi04a`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi04a` (
  `idvi04a` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idvi04a`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi04b`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi04b` (
  `idvi04b` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idvi04b`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi05a`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi05a` (
  `idvi05a` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idvi05a`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi05b`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi05b` (
  `idvi05b` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idvi05b`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi10a`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi10a` (
  `idvi10a` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idvi10a`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`infraestructura_vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`infraestructura_vivienda` (
  `idinfraestructura_vivienda` INT NOT NULL,
  `vi01` INT NOT NULL COMMENT 'Vía de acceso principal a la vivienda',
  `vi02` INT NOT NULL COMMENT 'Tipo de vivienda',
  `vi03a` INT NOT NULL COMMENT 'Material del techo o cubierta',
  `vi03b` INT NOT NULL COMMENT 'Estado del techo',
  `vi04b` INT NOT NULL COMMENT 'Estado del piso',
  `vi05a` INT NOT NULL COMMENT 'Material de las paredes',
  `vi05b` INT NOT NULL COMMENT 'Estado de las paredes',
  `vi10a` INT NOT NULL COMMENT 'El agua que recibe la vivienda es',
  `id_vivienda` INT NOT NULL,
  `vi04a_idvi04a` INT NOT NULL,
  PRIMARY KEY (`idinfraestructura_vivienda`, `vi04a_idvi04a`),
  INDEX `fk_Vivienda_vi011_idx` (`vi01` ASC) VISIBLE,
  INDEX `fk_Vivienda_vi021_idx` (`vi02` ASC) VISIBLE,
  INDEX `fk_Vivienda_vi03a1_idx` (`vi03a` ASC) VISIBLE,
  INDEX `fk_Vivienda_vi03b1_idx` (`vi03b` ASC) VISIBLE,
  INDEX `fk_Vivienda_vi04b1_idx` (`vi04b` ASC) VISIBLE,
  INDEX `fk_Vivienda_vi05a1_idx` (`vi05a` ASC) VISIBLE,
  INDEX `fk_Vivienda_vi05b1_idx` (`vi05b` ASC) VISIBLE,
  INDEX `fk_Vivienda_vi10a1_idx` (`vi10a` ASC) VISIBLE,
  INDEX `fk_infraestructura_vivienda_Vivienda1_idx` (`id_vivienda` ASC) VISIBLE,
  INDEX `fk_infraestructura_vivienda_vi04a1_idx` (`vi04a_idvi04a` ASC) VISIBLE,
  CONSTRAINT `fk_Vivienda_vi0110`
    FOREIGN KEY (`vi01`)
    REFERENCES `mydb`.`vi01` (`idvi01`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_vi0210`
    FOREIGN KEY (`vi02`)
    REFERENCES `mydb`.`vi02` (`idvi02`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_vi03a10`
    FOREIGN KEY (`vi03a`)
    REFERENCES `mydb`.`vi03a` (`idvi03a`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_vi03b10`
    FOREIGN KEY (`vi03b`)
    REFERENCES `mydb`.`vi03b` (`idvi03b`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_vi04b10`
    FOREIGN KEY (`vi04b`)
    REFERENCES `mydb`.`vi04b` (`idvi04b`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_vi05a10`
    FOREIGN KEY (`vi05a`)
    REFERENCES `mydb`.`vi05a` (`idvi05a`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_vi05b10`
    FOREIGN KEY (`vi05b`)
    REFERENCES `mydb`.`vi05b` (`idvi05b`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_vi10a10`
    FOREIGN KEY (`vi10a`)
    REFERENCES `mydb`.`vi10a` (`idvi10a`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infraestructura_vivienda_Vivienda1`
    FOREIGN KEY (`id_vivienda`)
    REFERENCES `mydb`.`Vivienda` (`id_vivienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infraestructura_vivienda_vi04a1`
    FOREIGN KEY (`vi04a_idvi04a`)
    REFERENCES `mydb`.`vi04a` (`idvi04a`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi07b`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi07b` (
  `idvi07b` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idvi07b`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi08`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi08` (
  `idvi08` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idvi08`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi09`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi09` (
  `idvi09` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idvi09`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vi09a`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vi09a` (
  `idvi09a` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idvi09a`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`encuesta_hogar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`encuesta_hogar` (
  `id_encuesta_hogar` INT NOT NULL COMMENT 'Identificador de hogar',
  `vi06` INT NOT NULL COMMENT 'Número de cuartos',
  `vi07` INT NOT NULL COMMENT 'Número de dormitorios',
  `vi07a` INT NOT NULL COMMENT 'Número de cuartos para negocio',
  `vi07b` INT NOT NULL COMMENT 'Dispone este hogar de un cuarto o espacio exclusivo para cocinar',
  `vi08` INT NOT NULL COMMENT 'Material con que cocinan',
  `vi09` INT NOT NULL COMMENT 'Tipo de servicio higiénico',
  `vi09a` INT NOT NULL COMMENT 'Puesto que mencionó que NO TIENE Servicio Higiénico, los miembros del hogar',
  `vi09b` INT NOT NULL COMMENT 'Qué tipo de instalación sanitaria cercana y/o prestada utiliza principalmente el hogar',
  `vi10` INT NOT NULL COMMENT 'De dónde obtiene el agua',
  `vi101` INT NOT NULL COMMENT 'Tiene medidor de agua',
  `vi102` INT NOT NULL COMMENT 'El agua que obtiene  es de la junta de agua',
  `vi11` INT NOT NULL COMMENT 'El servicio de ducha es',
  `vi12` INT NOT NULL COMMENT 'Tipo de alumbrado',
  `vi13` INT NOT NULL COMMENT 'Cómo eliminan la basura',
  `vi141` DOUBLE NOT NULL COMMENT 'Cuál es el valor que paga/ pagaria mensualmente por el arriendo',
  `vi142` INT NOT NULL COMMENT 'En el valor que paga por el arriendo se incluye el pago por el servicio de agua',
  `vi143` INT NOT NULL COMMENT 'En el valor que paga por el arriendo se incluye el pago por el servicio de luz',
  `vi144` INT NOT NULL COMMENT 'Tiene relación de parentesco con el propietario de la vivienda',
  `vi1511` INT NOT NULL COMMENT '¿Tiene este hogar-Vehículos?',
  `vi1521` INT NOT NULL COMMENT 'Cuántos tiene-Vehículos',
  `vi1512` INT NOT NULL COMMENT '¿Tiene este hogar-Motos?',
  `vi1522` INT NOT NULL COMMENT 'Cuántos tiene-Motos',
  `vi1531` INT NOT NULL COMMENT 'Abastecimiento (combustible-electricidad) utiliza con mayor frecuencia- Súper',
  `vi1541` INT NOT NULL COMMENT 'Cuánto gastó por combustible o electricidad-Super',
  `vi1532` INT NOT NULL COMMENT 'Abastecimiento (combustible-electricidad) utiliza con mayor frecuencia- Extra',
  `vi1542` INT NOT NULL COMMENT 'Abastecimiento (combustible-electricidad) utiliza con mayor frecuencia- Extra',
  `vi1533` INT NOT NULL COMMENT 'Abastecimiento (combustible-electricidad) utiliza con mayor frecuencia-Diésel',
  `vi1543` INT NOT NULL COMMENT 'Cuánto gastó por combustible o electricidad-Diesel',
  `vi1534` INT NOT NULL COMMENT 'Abastecimiento (combustible-electricidad) utiliza con mayor frecuencia-  Ecopaís',
  `vi1544` INT NOT NULL COMMENT 'Cuánto gastó por combustible o electricidad-Ecopaís',
  `vi1535` INT NOT NULL COMMENT 'Abastecimiento (combustible-electricidad) utiliza con mayor frecuencia- Electricidad',
  `vi1545` INT NOT NULL COMMENT 'Cuánto gastó por combustible o electricidad-Electricidad',
  `vi1536` INT NOT NULL COMMENT 'Abastecimiento (combustible-electricidad) utiliza con mayor frecuencia- Gas',
  `vi1546` INT NOT NULL COMMENT 'Cuánto gastó por combustible o electricidad-Gas',
  `Hogar_id_hogar` INT NOT NULL,
  INDEX `fk_Hogar_vi07b1_idx` (`vi07b` ASC) VISIBLE,
  INDEX `fk_Hogar_vi081_idx` (`vi08` ASC) VISIBLE,
  INDEX `fk_Hogar_vi091_idx` (`vi09` ASC) VISIBLE,
  INDEX `fk_Hogar_vi09a1_idx` (`vi09a` ASC) VISIBLE,
  INDEX `fk_Hogar_vi09b1_idx` (`vi09b` ASC) VISIBLE,
  INDEX `fk_Hogar_vi101_idx` (`vi10` ASC) VISIBLE,
  INDEX `fk_Hogar_vi1011_idx` (`vi101` ASC) VISIBLE,
  INDEX `fk_Hogar_vi1021_idx` (`vi102` ASC) VISIBLE,
  INDEX `fk_Hogar_vi111_idx` (`vi11` ASC) VISIBLE,
  INDEX `fk_Hogar_vi121_idx` (`vi12` ASC) VISIBLE,
  INDEX `fk_Hogar_vi131_idx` (`vi13` ASC) VISIBLE,
  INDEX `fk_Hogar_vi1421_idx` (`vi142` ASC) VISIBLE,
  INDEX `fk_Hogar_vi1431_idx` (`vi143` ASC) VISIBLE,
  INDEX `fk_Hogar_vi1441_idx` (`vi144` ASC) VISIBLE,
  INDEX `fk_Hogar_vi15111_idx` (`vi1511` ASC) VISIBLE,
  INDEX `fk_Hogar_vi15121_idx` (`vi1512` ASC) VISIBLE,
  INDEX `fk_Hogar_vi15311_idx` (`vi1531` ASC) VISIBLE,
  INDEX `fk_Hogar_vi15321_idx` (`vi1532` ASC) VISIBLE,
  INDEX `fk_Hogar_vi15331_idx` (`vi1533` ASC) VISIBLE,
  INDEX `fk_Hogar_vi15341_idx` (`vi1534` ASC) VISIBLE,
  INDEX `fk_Hogar_vi15351_idx` (`vi1535` ASC) VISIBLE,
  INDEX `fk_Hogar_vi15361_idx` (`vi1536` ASC) VISIBLE,
  PRIMARY KEY (`id_encuesta_hogar`),
  INDEX `fk_encuesta_hogar_Hogar1_idx` (`Hogar_id_hogar` ASC) VISIBLE,
  CONSTRAINT `fk_Hogar_vi07b10`
    FOREIGN KEY (`vi07b`)
    REFERENCES `mydb`.`vi07b` (`idvi07b`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi0810`
    FOREIGN KEY (`vi08`)
    REFERENCES `mydb`.`vi08` (`idvi08`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi0910`
    FOREIGN KEY (`vi09`)
    REFERENCES `mydb`.`vi09` (`idvi09`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi09a10`
    FOREIGN KEY (`vi09a`)
    REFERENCES `mydb`.`vi09a` (`idvi09a`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi09b10`
    FOREIGN KEY (`vi09b`)
    REFERENCES `mydb`.`vi09b` (`idvio09b`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi1010`
    FOREIGN KEY (`vi10`)
    REFERENCES `mydb`.`vi10` (`idvi10`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi10110`
    FOREIGN KEY (`vi101`)
    REFERENCES `mydb`.`vi101` (`id101`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi10210`
    FOREIGN KEY (`vi102`)
    REFERENCES `mydb`.`vi102` (`idvi102`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi1110`
    FOREIGN KEY (`vi11`)
    REFERENCES `mydb`.`vi11` (`idvi11`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi1210`
    FOREIGN KEY (`vi12`)
    REFERENCES `mydb`.`vi12` (`idvi12`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi1310`
    FOREIGN KEY (`vi13`)
    REFERENCES `mydb`.`vi13` (`idvi13`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi14210`
    FOREIGN KEY (`vi142`)
    REFERENCES `mydb`.`vi142` (`idvi142`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi14310`
    FOREIGN KEY (`vi143`)
    REFERENCES `mydb`.`vi143` (`idvi143`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi14410`
    FOREIGN KEY (`vi144`)
    REFERENCES `mydb`.`vi144` (`idvi144`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi151110`
    FOREIGN KEY (`vi1511`)
    REFERENCES `mydb`.`vi1511` (`idvi1511`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi151210`
    FOREIGN KEY (`vi1512`)
    REFERENCES `mydb`.`vi1512` (`idvi512`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi153110`
    FOREIGN KEY (`vi1531`)
    REFERENCES `mydb`.`vi1531` (`idvi1531`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi153210`
    FOREIGN KEY (`vi1532`)
    REFERENCES `mydb`.`vi1532` (`idvi1532`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi153310`
    FOREIGN KEY (`vi1533`)
    REFERENCES `mydb`.`vi1533` (`idvi1533`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi153410`
    FOREIGN KEY (`vi1534`)
    REFERENCES `mydb`.`vi1534` (`idvi1534`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi153510`
    FOREIGN KEY (`vi1535`)
    REFERENCES `mydb`.`vi1535` (`id1535`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_vi153610`
    FOREIGN KEY (`vi1536`)
    REFERENCES `mydb`.`vi1536` (`idvi1536`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_encuesta_hogar_Hogar1`
    FOREIGN KEY (`Hogar_id_hogar`)
    REFERENCES `mydb`.`Hogar` (`id_hogar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`s1p2_Respuesta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`s1p2_Respuesta` (
  `ids1p2` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`ids1p2`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`s1p3_Respuesta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`s1p3_Respuesta` (
  `idtable1` INT NOT NULL,
  PRIMARY KEY (`idtable1`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`s1p7_Respuesta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`s1p7_Respuesta` (
  `idtable1` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idtable1`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`s1p8_Respuesta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`s1p8_Respuesta` (
  `ids1p8_Respuesta` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`ids1p8_Respuesta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`s1p12a_Respuesta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`s1p12a_Respuesta` (
  `ids1p12a` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`ids1p12a`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`s1p13_Respuesta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`s1p13_Respuesta` (
  `ids1p13` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`ids1p13`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Persona` (
  `idPersona` INT NOT NULL COMMENT 'id de cada persona\n',
  `s1p2` INT NOT NULL COMMENT 'Sexo Puede ser 1 o 2 si es hombre o mujer',
  `s1p3` INT NOT NULL COMMENT 'Edad de la persona\n\n',
  `s1p7` INT NOT NULL COMMENT 'Idioma de los padres\n',
  `s1p8` INT NOT NULL COMMENT 'Idioma que habla',
  `s1p12a` INT NOT NULL COMMENT 'Nivel de instrucción',
  `s1p13` INT NOT NULL COMMENT 'Sabe leer y escribir\n',
  `id_hogar` INT NOT NULL,
  PRIMARY KEY (`idPersona`),
  INDEX `fk_Persona_table11_idx` (`s1p2` ASC) VISIBLE,
  INDEX `fk_Persona_table12_idx` (`s1p3` ASC) VISIBLE,
  INDEX `fk_Persona_s1p7_Respuesta1_idx` (`s1p7` ASC) VISIBLE,
  INDEX `fk_Persona_s1p8_Respuesta1_idx` (`s1p8` ASC) VISIBLE,
  INDEX `fk_Persona_s1p12a_Respuesta1_idx` (`s1p12a` ASC) VISIBLE,
  INDEX `fk_Persona_s1p13_Respuesta1_idx` (`s1p13` ASC) VISIBLE,
  INDEX `fk_Persona_Hogar1_idx` (`id_hogar` ASC) VISIBLE,
  CONSTRAINT `fk_Persona_table11`
    FOREIGN KEY (`s1p2`)
    REFERENCES `mydb`.`s1p2_Respuesta` (`ids1p2`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona_table12`
    FOREIGN KEY (`s1p3`)
    REFERENCES `mydb`.`s1p3_Respuesta` (`idtable1`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona_s1p7_Respuesta1`
    FOREIGN KEY (`s1p7`)
    REFERENCES `mydb`.`s1p7_Respuesta` (`idtable1`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona_s1p8_Respuesta1`
    FOREIGN KEY (`s1p8`)
    REFERENCES `mydb`.`s1p8_Respuesta` (`ids1p8_Respuesta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona_s1p12a_Respuesta1`
    FOREIGN KEY (`s1p12a`)
    REFERENCES `mydb`.`s1p12a_Respuesta` (`ids1p12a`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona_s1p13_Respuesta1`
    FOREIGN KEY (`s1p13`)
    REFERENCES `mydb`.`s1p13_Respuesta` (`ids1p13`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona_Hogar1`
    FOREIGN KEY (`id_hogar`)
    REFERENCES `mydb`.`Hogar` (`id_hogar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `mydb` ;
INSERT INTO mydb.area values (1, 'Urbana');
INSERT INTO mydb.area values (2, 'Rural');

INSERT INTO mydb.vi01 VALUES(1, 'Carretera/ calle pavimentada o adoquinada');
INSERT INTO mydb.vi01 VALUES(2, 'Empedrado');
INSERT INTO mydb.vi01 VALUES(3, 'Lastrado/ calle de tierra');
INSERT INTO mydb.vi01 VALUES(4, 'Sendero');
INSERT INTO mydb.vi01 VALUES(5, 'Río/ Mar');
INSERT INTO mydb.vi01 VALUES(6, 'Otro, cuál?');

INSERT INTO mydb.vi02 VALUES(1, 'Casa o villa');
INSERT INTO mydb.vi02 VALUES(2, 'Departamento');
INSERT INTO mydb.vi02 VALUES(3, 'Cuartos en casa de inquilinato');
INSERT INTO mydb.vi02 VALUES(4, 'Mediagua');
INSERT INTO mydb.vi02 VALUES(5, 'Rancho, Covacha');
INSERT INTO mydb.vi02 VALUES(6, 'Choza');
INSERT INTO mydb.vi02 VALUES(7, 'Otra');


INSERT INTO mydb.vi03a VALUES(1, 'Hormigón (losa, cemento)');
INSERT INTO mydb.vi03a VALUES(2, 'Fibrocemento,asbesto (eternit, eurolit)');
INSERT INTO mydb.vi03a VALUES(3, 'Zinc, Aluminio');
INSERT INTO mydb.vi03a VALUES(4, 'Teja');
INSERT INTO mydb.vi03a VALUES(5, 'Palma, paja u hoja');
INSERT INTO mydb.vi03a VALUES(6, 'Otro Material');

INSERT INTO mydb.vi03b VALUES(1, 'Bueno ');
INSERT INTO mydb.vi03b VALUES(2, 'Regular ');
INSERT INTO mydb.vi03b VALUES(3, 'Malo');


INSERT INTO mydb.vi04a VALUES(1, 'Duela, parquet, tablón tratado o piso flotante');
INSERT INTO mydb.vi04a VALUES(2, 'Cerámica, baldosa, vinil o porcelanato');
INSERT INTO mydb.vi04a VALUES(3, 'Mármol o marmetón');
INSERT INTO mydb.vi04a VALUES(4, 'Ladrillo o cemento');
INSERT INTO mydb.vi04a VALUES(5, 'Tabla / tablón no tratado');
INSERT INTO mydb.vi04a VALUES(6, 'Caña');
INSERT INTO mydb.vi04a VALUES(7, 'Tierra');
INSERT INTO mydb.vi04a VALUES(8, 'Otro Material');

INSERT INTO mydb.vi04b VALUES(1, 'Bueno ');
INSERT INTO mydb.vi04b VALUES(2, 'Regular ');
INSERT INTO mydb.vi04b VALUES(3, 'Malo');

INSERT INTO mydb.vi05a VALUES(1, 'Hormigón/Ladrillo o Bloque');
INSERT INTO mydb.vi05a VALUES(2, 'Asbesto/Cemento (Fibrolit)');
INSERT INTO mydb.vi05a VALUES(3, 'Adobe o Tapia');
INSERT INTO mydb.vi05a VALUES(4, 'Madera');
INSERT INTO mydb.vi05a VALUES(5, 'Caña revestida o bahareque');
INSERT INTO mydb.vi05a VALUES(6, 'Caña no revestida o estera');
INSERT INTO mydb.vi05a VALUES(7, 'Otro Material');

INSERT INTO mydb.vi05b VALUES(1, 'Bueno ');
INSERT INTO mydb.vi05b VALUES(2, 'Regular ');
INSERT INTO mydb.vi05b VALUES(3, 'Malo');

INSERT INTO mydb.vi07b VALUES(1, 'Si');
INSERT INTO mydb.vi07b VALUES(2, 'No');


INSERT INTO mydb.vi08 VALUES(1, 'Gas');
INSERT INTO mydb.vi08 VALUES(2, 'Leña, carbón');
INSERT INTO mydb.vi08 VALUES(3, 'Electricidad');
INSERT INTO mydb.vi08 VALUES(4, 'Otro');


INSERT INTO mydb.vi09 VALUES(1, 'Excusado y alcantarillado');
INSERT INTO mydb.vi09 VALUES(2, 'Excusado y pozo séptico');
INSERT INTO mydb.vi09 VALUES(3, 'Excusado y pozo ciego');
INSERT INTO mydb.vi09 VALUES(4, 'Letrina');
INSERT INTO mydb.vi09 VALUES(5, 'No tiene');

INSERT INTO mydb.vi09a VALUES(1, 'Descarga directa al mar, río, lago o quebrada');
INSERT INTO mydb.vi09a VALUES(2, 'Van al monte, campo, bota la basura en paquete');
INSERT INTO mydb.vi09a VALUES(3, 'Usan una instalación sanitaria cercana y/o prestada');


INSERT INTO mydb.vi09b VALUES(1, 'Excusado y alcantarillado');
INSERT INTO mydb.vi09b VALUES(2, 'Excusado y pozo séptico');
INSERT INTO mydb.vi09b VALUES(3, 'Excusado y pozo ciego');
INSERT INTO mydb.vi09b VALUES(4, 'Letrina');


INSERT INTO mydb.vi10 VALUES(1, 'Red Pública');
INSERT INTO mydb.vi10 VALUES(2, 'Pila o llave pública');
INSERT INTO mydb.vi10 VALUES(3, 'Otra fuente por tubería');
INSERT INTO mydb.vi10 VALUES(4, 'Carro repartidor/triciclo');
INSERT INTO mydb.vi10 VALUES(5, 'Pozo');
INSERT INTO mydb.vi10 VALUES(6, 'Río, vertiente o acequia');
INSERT INTO mydb.vi10 VALUES(7, 'Otro');

INSERT INTO mydb.vi10a VALUES(1, 'Por tubería dentro de la vivienda');
INSERT INTO mydb.vi10a VALUES(2, 'Por tubería fuera de la vivienda pero en el lote');
INSERT INTO mydb.vi10a VALUES(3, 'Por tubería fuera de la vivienda, lote o terreno');
INSERT INTO mydb.vi10a VALUES(4, 'No recibe agua por tubería sino por otros medios');

INSERT INTO mydb.vi11 VALUES(1, 'Exclusivo del hogar');
INSERT INTO mydb.vi11 VALUES(2, 'Compartido con otros hogares');
INSERT INTO mydb.vi11 VALUES(3, 'No tiene');

INSERT INTO mydb.vi12 VALUES(1, 'Empresa eléctrica pública');
INSERT INTO mydb.vi12 VALUES(2, 'Planta eléctrica privada');
INSERT INTO mydb.vi12 VALUES(3, 'Vela, candil, mechero, gas');
INSERT INTO mydb.vi12 VALUES(4, 'Ninguno');

INSERT INTO mydb.vi13 VALUES(1, 'Contratan el servicio');
INSERT INTO mydb.vi13 VALUES(2, 'Servicio municipal');
INSERT INTO mydb.vi13 VALUES(3, 'Botan a la calle, quebrada, río');
INSERT INTO mydb.vi13 VALUES(4, 'La queman, entierran');
INSERT INTO mydb.vi13 VALUES(5, 'Otra');

INSERT INTO mydb.vi14 VALUES(1, 'En arriendo');
INSERT INTO mydb.vi14 VALUES(2, 'Anticresis y/o arriendo');
INSERT INTO mydb.vi14 VALUES(3, 'Propia y la está pagando');
INSERT INTO mydb.vi14 VALUES(4, 'Propia y totalmente pagada');
INSERT INTO mydb.vi14 VALUES(5, 'Cedida');
INSERT INTO mydb.vi14 VALUES(6, 'Recibida por servicios');
INSERT INTO mydb.vi14 VALUES(7, 'Otra');


INSERT INTO mydb.vi101 VALUES(1, 'Si');
INSERT INTO mydb.vi101 VALUES(2, 'No');

INSERT INTO mydb.vi102 VALUES(1, 'Si');
INSERT INTO mydb.vi102 VALUES(2, 'No');

INSERT INTO mydb.vi142 VALUES(1, 'Si');
INSERT INTO mydb.vi142 VALUES(2, 'No');

INSERT INTO mydb.vi143 VALUES(1, 'Si');
INSERT INTO mydb.vi143 VALUES(2, 'No');

INSERT INTO mydb.vi144 VALUES(1, 'Si');
INSERT INTO mydb.vi144 VALUES(2, 'No');

INSERT INTO mydb.vi1511 VALUES(1, 'Si');
INSERT INTO mydb.vi1511 VALUES(2, 'No');

INSERT INTO mydb.vi1512 VALUES(1, 'Si');
INSERT INTO mydb.vi1512 VALUES(2, 'No');


INSERT INTO mydb.vi1531 VALUES(1, 'Si');
INSERT INTO mydb.vi1531 VALUES(2, 'No');

INSERT INTO mydb.vi1532 VALUES(1, 'Si');
INSERT INTO mydb.vi1532 VALUES(2, 'No');

INSERT INTO mydb.vi1533 VALUES(1, 'Si');
INSERT INTO mydb.vi1533 VALUES(2, 'No');

INSERT INTO mydb.vi1534 VALUES(1, 'Si');
INSERT INTO mydb.vi1534 VALUES(2, 'No');

INSERT INTO mydb.vi1535 VALUES(1, 'Si');
INSERT INTO mydb.vi1535 VALUES(2, 'No');

INSERT INTO mydb.vi1536 VALUES(1, 'Si');
INSERT INTO mydb.vi1536 VALUES(2, 'No');


INSERT INTO mydb.vivienda_n VALUES(1, 'Vivienda Uno');
INSERT INTO mydb.vivienda_n VALUES(2, 'Vivienda Dos');
INSERT INTO mydb.vivienda_n VALUES(3, 'Vivienda Tres');
INSERT INTO mydb.vivienda_n VALUES(4, 'Vivienda Cuatro');
INSERT INTO mydb.vivienda_n VALUES(5, 'Vivienda Cinco');
INSERT INTO mydb.vivienda_n VALUES(6, 'Vivienda Seis');
INSERT INTO mydb.vivienda_n VALUES(7, 'Vivienda Siete');
INSERT INTO mydb.vivienda_n VALUES(8, 'Vivienda Ocho (reemplazo)');
INSERT INTO mydb.vivienda_n VALUES(9, 'Vivienda Nueve (reemplazo)');
INSERT INTO mydb.vivienda_n VALUES(10, 'Vivienda Diez (reemplazo)');


INSERT INTO mydb.hogar_n VALUES(1, 'Hogar Uno');
INSERT INTO mydb.hogar_n VALUES(2, 'Hogar Dos');
INSERT INTO mydb.hogar_n VALUES(3, 'Hogar Tres');
INSERT INTO mydb.hogar_n VALUES(4, 'Hogar Cuatro');
INSERT INTO mydb.hogar_n VALUES(5, 'Hogar Cinco');

INSERT INTO mydb.periodo VALUES(202301, 'ene-23');
INSERT INTO mydb.periodo VALUES(202302, 'feb-23');
INSERT INTO mydb.periodo VALUES(202303, 'mar-23');

