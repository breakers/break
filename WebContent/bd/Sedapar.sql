SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `sedapar_lp2` DEFAULT CHARACTER SET utf8 ;
USE `sedapar_lp2` ;

-- -----------------------------------------------------
-- Table `sedapar_lp2`.`tb_departamento`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sedapar_lp2`.`tb_departamento` (
  `COD_DEPT` CHAR(4) NOT NULL ,
  `NOM_DEPT` VARCHAR(40) NOT NULL ,
  PRIMARY KEY (`COD_DEPT`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sedapar_lp2`.`tb_provincia`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sedapar_lp2`.`tb_provincia` (
  `COD_DEPT` CHAR(4) NOT NULL ,
  `COD_PROV` CHAR(4) NOT NULL ,
  `NOM_PROV` VARCHAR(40) NOT NULL ,
  PRIMARY KEY (`COD_DEPT`, `COD_PROV`) ,
  CONSTRAINT `tb_provincia_ibfk_1`
    FOREIGN KEY (`COD_DEPT` )
    REFERENCES `sedapar_lp2`.`tb_departamento` (`COD_DEPT` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sedapar_lp2`.`tb_distrito`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sedapar_lp2`.`tb_distrito` (
  `COD_DEPT` CHAR(4) NOT NULL ,
  `COD_PROV` CHAR(4) NOT NULL ,
  `COD_DIST` CHAR(4) NOT NULL ,
  `NOM_DIST` VARCHAR(40) NOT NULL ,
  PRIMARY KEY (`COD_DEPT`, `COD_PROV`, `COD_DIST`) ,
  CONSTRAINT `tb_distrito_ibfk_1`
    FOREIGN KEY (`COD_DEPT` , `COD_PROV` )
    REFERENCES `sedapar_lp2`.`tb_provincia` (`COD_DEPT` , `COD_PROV` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sedapar_lp2`.`tb_cliente`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sedapar_lp2`.`tb_cliente` (
  `COD_CLI` CHAR(6) NOT NULL ,
  `NOM_CLI` VARCHAR(30) NULL DEFAULT NULL ,
  `APEP_CLI` VARCHAR(20) NULL DEFAULT NULL ,
  `APEM_CLI` VARCHAR(20) NULL DEFAULT NULL ,
  `TELF_CLI` VARCHAR(9) NULL DEFAULT NULL ,
  `CORREOE_CLI` VARCHAR(40) NULL DEFAULT NULL ,
  `DIRECC_CLI` VARCHAR(60) NOT NULL ,
  `FOTO_CLI` VARCHAR(250) NULL DEFAULT NULL ,
  `COD_DEPT` CHAR(4) NOT NULL ,
  `COD_PROV` CHAR(4) NOT NULL ,
  `COD_DIST` CHAR(4) NOT NULL ,
  `DNI_CLI` VARCHAR(11) NOT NULL UNIQUE,
  PRIMARY KEY (`COD_CLI`) ,
  INDEX `COD_DEPT` (`COD_DEPT` ASC, `COD_PROV` ASC, `COD_DIST` ASC) ,
  CONSTRAINT `tb_cliente_ibfk_1`
    FOREIGN KEY (`COD_DEPT` , `COD_PROV` , `COD_DIST` )
    REFERENCES `sedapar_lp2`.`tb_distrito` (`COD_DEPT` , `COD_PROV` , `COD_DIST` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sedapar_lp2`.`tb_tip_pago`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sedapar_lp2`.`tb_tip_pago` (
  `COD_TIP_PAGO` CHAR(6) NOT NULL ,
  `DESC_TIP_PAGO` VARCHAR(15) NOT NULL ,
  PRIMARY KEY (`COD_TIP_PAGO`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sedapar_lp2`.`tb_tipo_empleado`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sedapar_lp2`.`tb_tipo_empleado` (
  `COD_TIP_EMP` CHAR(6) NOT NULL ,
  `DESC_TIP_EMP` VARCHAR(15) NOT NULL ,
  PRIMARY KEY (`COD_TIP_EMP`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sedapar_lp2`.`tb_empleado`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sedapar_lp2`.`tb_empleado` (
  `COD_EMP` CHAR(6) NOT NULL ,
  `NOM_EMP` VARCHAR(25) NOT NULL ,
  `APEP_EMP` VARCHAR(15) NOT NULL ,
  `APEM_EMP` VARCHAR(15) NOT NULL ,
  `DNI_EMP` CHAR(8) NOT NULL UNIQUE,
  `COD_TIP_EMP` CHAR(6) NOT NULL ,
  `USU_EMP` VARCHAR(25) NOT NULL UNIQUE,
  `PASS_EMP` VARCHAR(25) NOT NULL ,
  `FOTO_EMP` VARCHAR(250) NULL DEFAULT NULL ,
  PRIMARY KEY (`COD_EMP`) ,
  INDEX `COD_TIP_EMP` (`COD_TIP_EMP` ASC) ,
  CONSTRAINT `tb_empleado_ibfk_1`
    FOREIGN KEY (`COD_TIP_EMP` )
    REFERENCES `sedapar_lp2`.`tb_tipo_empleado` (`COD_TIP_EMP` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sedapar_lp2`.`tb_tipo_servicio`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sedapar_lp2`.`tb_tipo_servicio` (
  `COD_TIP_SER` CHAR(4) NOT NULL ,
  `DESC_TIP_SER` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`COD_TIP_SER`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sedapar_lp2`.`tb_tipo_predio`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sedapar_lp2`.`tb_tipo_predio` (
  `COD_TIP_PRE` CHAR(6) NOT NULL ,
  `DESC_TIP_PRE` VARCHAR(40) NOT NULL ,
  `PRECIO_TIP_PRE` DOUBLE NOT NULL ,
  PRIMARY KEY (`COD_TIP_PRE`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sedapar_lp2`.`tb_estado_predio`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sedapar_lp2`.`tb_estado_predio` (
  `COD_EST_PRE` CHAR(6) NOT NULL ,
  `DESC_EST_PRE` VARCHAR(40) NOT NULL ,
  `PRECIO_EST_PRE` DOUBLE NOT NULL ,
  PRIMARY KEY (`COD_EST_PRE`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sedapar_lp2`.`tb_predio`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sedapar_lp2`.`tb_predio` (
  `COD_PRE` CHAR(6) NOT NULL ,
  `DIR_PRE` VARCHAR(100) NOT NULL ,
  `COD_DEPT` CHAR(4) NOT NULL ,
  `COD_PROV` CHAR(4) NOT NULL ,
  `COD_DIST` CHAR(4) NOT NULL ,
  `REF_PRE` VARCHAR(100) NULL DEFAULT NULL ,
  `AREA_PRE` VARCHAR(10) NOT NULL ,
  `COD_EST_PRE` CHAR(6) NOT NULL ,
  `COD_TIP_PRE` CHAR(6) NOT NULL ,
  PRIMARY KEY (`COD_PRE`) ,
  INDEX `COD_DEPT` (`COD_DEPT` ASC, `COD_PROV` ASC, `COD_DIST` ASC) ,
  INDEX `COD_EST_PRE` (`COD_EST_PRE` ASC) ,
  INDEX `COD_TIP_PRE` (`COD_TIP_PRE` ASC) ,
  CONSTRAINT `tb_predio_ibfk_3`
    FOREIGN KEY (`COD_TIP_PRE` )
    REFERENCES `sedapar_lp2`.`tb_tipo_predio` (`COD_TIP_PRE` ),
  CONSTRAINT `tb_predio_ibfk_1`
    FOREIGN KEY (`COD_DEPT` , `COD_PROV` , `COD_DIST` )
    REFERENCES `sedapar_lp2`.`tb_distrito` (`COD_DEPT` , `COD_PROV` , `COD_DIST` ),
  CONSTRAINT `tb_predio_ibfk_2`
    FOREIGN KEY (`COD_EST_PRE` )
    REFERENCES `sedapar_lp2`.`tb_estado_predio` (`COD_EST_PRE` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sedapar_lp2`.`tb_cuenta`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sedapar_lp2`.`tb_cuenta` (
  `COD_CUENTA` CHAR(6) NOT NULL ,
  `COD_CLI` CHAR(6) NOT NULL ,
  `FEC_CUENTA` DATE NOT NULL ,
  `COD_PRE` CHAR(6) NOT NULL ,
  `COD_EMP` CHAR(6) NOT NULL ,
  PRIMARY KEY (`COD_CUENTA`) ,
  INDEX `COD_CLI` (`COD_CLI` ASC) ,
  INDEX `COD_PRE` (`COD_PRE` ASC) ,
  INDEX `COD_EMP` (`COD_EMP` ASC) ,
  CONSTRAINT `tb_solicitud_ibfk_3`
    FOREIGN KEY (`COD_EMP` )
    REFERENCES `sedapar_lp2`.`tb_empleado` (`COD_EMP` )
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `tb_solicitud_ibfk_1`
    FOREIGN KEY (`COD_CLI` )
    REFERENCES `sedapar_lp2`.`tb_cliente` (`COD_CLI` ),
  CONSTRAINT `tb_solicitud_ibfk_2`
    FOREIGN KEY (`COD_PRE` )
    REFERENCES `sedapar_lp2`.`tb_predio` (`COD_PRE` )
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sedapar_lp2`.`tb_contrato`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sedapar_lp2`.`tb_contrato` (
  `COD_CONT` CHAR(6) NOT NULL ,
  `MONTO_CONT` DOUBLE NOT NULL ,
  `COD_TIP_PAGO` CHAR(6) NOT NULL ,
  `COD_TIP_SER` CHAR(4) NOT NULL ,
  `COD_CUENTA` CHAR(6) NOT NULL ,
  `COD_EMP` CHAR(6) NOT NULL ,
  `FEC_CONT` DATE NOT NULL ,
  PRIMARY KEY (`COD_CONT`) ,
  INDEX `COD_TIP_PAGO` (`COD_TIP_PAGO` ASC) ,
  INDEX `COD_TIP_SER` (`COD_TIP_SER` ASC) ,
  INDEX `COD_CUENTA` (`COD_CUENTA` ASC) ,
  INDEX `COD_EMP` (`COD_EMP` ASC) ,
  INDEX `FEC_CONT` (`FEC_CONT` ASC) ,
  CONSTRAINT `tb_contrato_ibfk_2`
    FOREIGN KEY (`COD_TIP_PAGO` )
    REFERENCES `sedapar_lp2`.`tb_tip_pago` (`COD_TIP_PAGO` ),
  CONSTRAINT `tb_contrato_ibfk_1`
    FOREIGN KEY (`COD_TIP_SER` )
    REFERENCES `sedapar_lp2`.`tb_tipo_servicio` (`COD_TIP_SER` ),
  CONSTRAINT `tb_contrato_ibfk_3`
    FOREIGN KEY (`COD_CUENTA` )
    REFERENCES `sedapar_lp2`.`tb_cuenta` (`COD_CUENTA` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tb_contrato_ibfk_4`
    FOREIGN KEY (`COD_EMP` )
    REFERENCES `sedapar_lp2`.`tb_empleado` (`COD_EMP` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sedapar_lp2`.`tb_cuotas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sedapar_lp2`.`tb_cuotas` (
  `COD_CONT` CHAR(6) NOT NULL ,
  `NUM_CUOT` INT(11) NOT NULL ,
  `FEC_VEN_CUOT` DATE NOT NULL ,
  `EST_CUOT` VARCHAR(25) NOT NULL ,
  `MONTO_CUOT` DOUBLE NOT NULL ,
  PRIMARY KEY (`COD_CONT`, `NUM_CUOT`) ,
  CONSTRAINT `tb_cron_cuotas_ibfk_1`
    FOREIGN KEY (`COD_CONT` )
    REFERENCES `sedapar_lp2`.`tb_contrato` (`COD_CONT` )
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

USE `sedapar_lp2` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


'Procedimiento de "Contratos Realizados"'
DELIMITER //
create PROCEDURE contratosfecha(
	fecha1 date,
	fecha2 date
)
BEGIN
select cont.cod_cont, cont.fec_cont, emp.cod_emp,emp.nom_emp,emp.apep_emp 
from tb_contrato cont
inner join tb_empleado emp
on cont.cod_emp = emp.cod_emp
where cont.fec_cont between fecha1 and fecha2
order by cont.fec_cont;
END//

DELIMITER //
create PROCEDURE deudaClientes()
BEGIN
SELECT
     cli.COD_CLI,
     cli.NOM_CLI,
     cli.APEP_CLI,
     cli.APEM_CLI,
     cuo.EST_CUOT,
     sum(cuo.MONTO_CUOT) AS MONTO_SUM
FROM
     tb_contrato cont 
	 INNER JOIN tb_cuotas cuo ON cont.COD_CONT = cuo.COD_CONT
     INNER JOIN tb_cuenta cue ON cont.COD_CUENTA = cue.COD_CUENTA
     INNER JOIN tb_cliente cli ON cue.COD_CLI = cli.COD_CLI
Where cuo.EST_CUOT = "Pendiente"
Group by(cli.COD_CLI)
order by MONTO_SUM desc;
END//

DELIMITER ;




INSERT INTO TB_DEPARTAMENTO VALUES ('DT01', 'Lima');
INSERT INTO TB_DEPARTAMENTO VALUES ('DT02', 'Ica');
INSERT INTO TB_DEPARTAMENTO VALUES ('DT03', 'Arequipa');
INSERT INTO TB_DEPARTAMENTO VALUES ('DT04', 'Cuzco');
INSERT INTO TB_DEPARTAMENTO VALUES ('DT05', 'Tacna');

INSERT INTO TB_PROVINCIA VALUES('DT01', 'PR01', 'Lima');
INSERT INTO TB_PROVINCIA VALUES('DT02', 'PR02', 'Chincha');
INSERT INTO TB_PROVINCIA VALUES('DT04', 'PR04', 'Calca');
INSERT INTO TB_PROVINCIA VALUES('DT05', 'PR05', 'Candarave');

INSERT INTO TB_PROVINCIA VALUES('DT01', 'PR02', 'Callao');
INSERT INTO TB_PROVINCIA VALUES('DT02', 'PR01', 'Ica');
INSERT INTO TB_PROVINCIA VALUES('DT02', 'PR03', 'Pisco');
INSERT INTO TB_PROVINCIA VALUES('DT02', 'PR04', 'Palpa');
INSERT INTO TB_PROVINCIA VALUES('DT02', 'PR05', 'Nazca');
INSERT INTO TB_PROVINCIA VALUES('DT04', 'PR05', 'Anta');
INSERT INTO TB_PROVINCIA VALUES('DT05', 'PR06', 'Tarata');

INSERT INTO TB_DISTRITO VALUES ('DT01', 'PR01', 'DI01', 'San Borja');
INSERT INTO TB_DISTRITO VALUES ('DT01', 'PR01', 'DI02', 'San Luis');
INSERT INTO TB_DISTRITO VALUES ('DT01', 'PR01', 'DI03', 'Surco');
INSERT INTO TB_DISTRITO VALUES ('DT01', 'PR01', 'DI04', 'Miraflores');
INSERT INTO TB_DISTRITO VALUES ('DT01', 'PR01', 'DI05', 'San Isidro');

-- provincias de Arequipa
INSERT INTO TB_PROVINCIA VALUES('DT03','PR01','Arequipa');
INSERT INTO TB_PROVINCIA VALUES('DT03','PR02','Camaná');
INSERT INTO TB_PROVINCIA VALUES('DT03','PR03','Caraveli');
INSERT INTO TB_PROVINCIA VALUES('DT03','PR04','Castilla');
INSERT INTO TB_PROVINCIA VALUES('DT03','PR05','Caylloma');
INSERT INTO TB_PROVINCIA VALUES('DT03','PR06','Condesuyos');
INSERT INTO TB_PROVINCIA VALUES('DT03','PR07','Islay');
INSERT INTO TB_PROVINCIA VALUES('DT03','PR08','La Union');


-- distritos de arequipa - arequipa
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI01','Alto Selva Alegre');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI02','Cayma');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI03','Cerro Colorado');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI04','Characato');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI05','Chiguata');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI06','Jacobo Hunter');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI07','La Joya');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI08','Mariano Melgar');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI09','Miraflores');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI10','Mollebaya');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI11','Paucarpata');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI12','Pocsi');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI13','Polobaya');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI14','Quequeña');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI15','Sabandia');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI16','Sachaca');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI17','San Juan de Siguas');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI18','San Juan de Tarucani');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI19','Santa Isabel de Siguas');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI20','Santa Rita de Siguas');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI21','Socabaya');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI22','Tiabaya');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI23','Uchumayo');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI24','Vitor 1');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI25','Yanahuara');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI26','Yarabamba');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI27','Yura');
INSERT INTO TB_DISTRITO VALUES('DT03','PR01','DI28','Jose Luis Bustamante y Rivero');


-- distritos de tarata-tacna
INSERT INTO TB_DISTRITO VALUES('DT05', 'PR06', 'DI01', 'Chucatamani');
INSERT INTO TB_DISTRITO VALUES('DT05', 'PR06', 'DI02', 'Estique');
INSERT INTO TB_DISTRITO VALUES('DT05', 'PR06', 'DI03', 'Estique-Pampa');
INSERT INTO TB_DISTRITO VALUES('DT05', 'PR06', 'DI04', 'Sitajara');
INSERT INTO TB_DISTRITO VALUES('DT05', 'PR06', 'DI05', 'Susapaya');
INSERT INTO TB_DISTRITO VALUES('DT05', 'PR06', 'DI06', 'Tarata');
INSERT INTO TB_DISTRITO VALUES('DT05', 'PR06', 'DI07', 'Tarucachi');
INSERT INTO TB_DISTRITO VALUES('DT05', 'PR06', 'DI08', 'Ticaco');

INSERT INTO TB_CLIENTE VALUES ('CLI001','Juan','Perez','Camacho','1234567','jperez@gmail.com',
'Av. Angamos N° 201',NULL, 'DT01', 'PR01', 'DI01', '99999998');
INSERT INTO TB_CLIENTE VALUES ('CLI002','Jorge','Ramos','Alvarez','1234567','jramos@gmail.com',
'Av. Larco N° 150',NULL, 'DT01', 'PR01', 'DI01','99999997');

INSERT INTO TB_CLIENTE VALUES ('CLI003','Eduardo','Arguedas','Carrasco','2345671','earguedas@yahoo.es',
'Jr. La Playa N° 599',NULL, 'DT03','PR01','DI16','99999996');

INSERT INTO TB_CLIENTE VALUES ('CLI004','Armando','Bacilio','Carrera','3456712','abacilio@gmail.com',
'Av. Angamos N° 300',NULL, 'DT03', 'PR01', 'DI27','99999995');


INSERT INTO TB_CLIENTE VALUES ('CLI005','Bertha','Banda','Chambi','2341567','berta@gmail.com',
'Av. Luciano N° 999',NULL, 'DT03','PR01','DI04','99999994');

INSERT INTO TB_CLIENTE VALUES ('CLI006','Victoria','Baraynar','Chavez','4561237','vicbara@gmail.com',
'Av. Argentina N° 100',NULL, 'DT03','PR01','DI09','99999993');

INSERT INTO TB_CLIENTE VALUES ('CLI007','Cielo','Barba','Chumbe','6712345','cielito@gmail.com',
'Av. Miraflores N° 300',NULL, 'DT03','PR01','DI21','99999992');

INSERT INTO TB_CLIENTE VALUES ('CLI008','Daniela','Barrantes','Cordero','4567123','danielita2010@gmail.com',
'Av. Jose Olaya N° 320',NULL, 'DT03','PR01','DI26','99999991');

INSERT INTO TB_CLIENTE VALUES ('CLI009','Daniel','Barrera','Damian','4512367','dani4ever@gmail.com',
'Av. Mendoza N° 590',NULL, 'DT03','PR01','DI18','99999990');

INSERT INTO TB_CLIENTE VALUES ('CLI010','Alexandra','Belito','Delgado','2345617','alexbeli@gmail.com',
'Av. Descalzos N° 590',NULL, 'DT03','PR01','DI16','99999989');

INSERT INTO TB_CLIENTE VALUES ('CLI011','Andrea','Benavides','Diaz','5671234','andree@gmail.com',
'Av. Maravi N° 600',NULL, 'DT03','PR01','DI14','99999988');

INSERT INTO TB_CLIENTE VALUES ('CLI012','Lucia','Campos','Diaz','1234756','lucicampos@gmail.com',
'Av. Junin N° 550',NULL, 'DT03','PR01','DI10','99999987');

INSERT INTO TB_CLIENTE VALUES ('CLI013','Alexis','Cordova','Chara','4512367','acordo@gmail.com',
'Av. Arequipa N° 450',NULL, 'DT03','PR01','DI23','99999986');

INSERT INTO TB_TIPO_SERVICIO VALUES('TS01','Conexión de agua');
INSERT INTO TB_TIPO_SERVICIO VALUES('TS02','Conexión de alcantarillado');

INSERT INTO TB_ESTADO_PREDIO VALUES('EST01','En construccion', '500');
INSERT INTO TB_ESTADO_PREDIO VALUES('EST02','Construido', '750');

INSERT INTO TB_TIPO_PREDIO VALUES('TP01','Doméstico', '400');
INSERT INTO TB_TIPO_PREDIO VALUES('TP02','Comercial', '650');

INSERT INTO TB_PREDIO VALUES('PRE001','Urbanizacion Monterrico,Avenida Angamos 240', 'DT01', 'PR01', 'DI01', 'Cerca a Ace Home Center','400m2','EST01','TP01');

INSERT INTO TB_TIPO_EMPLEADO VALUES('TE01','Administrador');
INSERT INTO TB_TIPO_EMPLEADO VALUES('TE02','Técnico');
INSERT INTO TB_TIPO_EMPLEADO VALUES('TE03','Cajero');


INSERT INTO TB_EMPLEADO VALUES('EMP001','Felix','Apaza','Arroyo','43836055','TE01','lysander','root','u000001');
INSERT INTO TB_EMPLEADO VALUES('EMP003','Renzo','Delgado','Guerra','89999992','TE01','rdelgado','testing','u000002');
INSERT INTO TB_EMPLEADO VALUES('EMP002','Ricardo','Quevedo','Grimaldo','89999991','TE02','oldkefka','qv2',NULL);
INSERT INTO TB_EMPLEADO VALUES('EMP004','Carlos','Sonan','Yonashiro','89999993','TE03','csonan','testing',NULL);
INSERT INTO TB_EMPLEADO VALUES('EMP005','Andre','Coquis','Raffo','89999994','TE03','acoquis','testing',NULL);

INSERT INTO TB_CUENTA VALUES('CAA001','CLI001','2013-07-12','PRE001','EMP001');

INSERT INTO TB_TIP_PAGO VALUES('TP01','Contado');
INSERT INTO TB_TIP_PAGO VALUES('TP02','Crédito');

INSERT INTO TB_CONTRATO VALUES('CT0001', '900','TP02','TS01', 'CAA001','EMP001','2013-06-11');

INSERT INTO TB_CUOTAS VALUES('CT0001','1', '2013-07-11','Cancelada', '300');
INSERT INTO TB_CUOTAS VALUES('CT0001','2', '2013-08-11','Pendiente', '300');
INSERT INTO TB_CUOTAS VALUES('CT0001','3', '2013-09-11','Pendiente', '300');




