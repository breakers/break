DROP DATABASE IF EXISTS `DB_Sedapar` ; 
create database DB_Sedapar;
use DB_Sedapar;

create table tb_perfil(
idPerfil int primary key auto_increment,
desPerfil varchar(50),
moduloContratos tinyint,
moduloCategorias tinyint,
moduloLiquidacion tinyint,
moduloReportes tinyint,
moduloManClientes tinyint,
moduloManPerfiles tinyint,
moduloManUsuarios tinyint,
moduloBuzon tinyint,
moduloCalendario tinyint
);

create table tb_usuario(
idUsuario int primary key auto_increment,
idPerfil int references tb_perfil(idPerfil),
userUsuario varchar(10),
passUsuario varchar(10),
nomUsuario varchar(30),
apepaUsuario varchar(30),
apemaUsuario varchar(30),
dniUsuario varchar(10),
correoUsuario varchar(30),
telefonoUsuario char(9)
);


create table tb_test_solicitud(
num_solicitud int primary key auto_increment,
nombre varchar(30),
fecha_solicitud date,
estado varchar(40) check(estado in ('Pendiente','Aprobada'))
);

create table tb_provincia(
id_prov char(3) primary key,
nombre varchar(30)
);

create table tb_distrito(
id_dis int primary key,
nombre varchar(30),
id_prov char(3) references tb_provincia
);

create table tb_localidad(
id_loc int primary key auto_increment,
nombre varchar(30),
id_prov char(3) references tb_provincia,
id_dis int references tb_distrito
);

create table tb_calle(
id_calle int primary key auto_increment,
nombre varchar(30),
id_prov char(3) references tb_provincia,
id_dis int references tb_distrito,
id_loc int references tb_localidad
);

create table tb_EstadoSolicitudConexion(
idEstado int primary key auto_increment,
desEstado varchar(100)
);

create table tb_solicitudNuevaConexion(
num_solicitud int primary key auto_increment,
nombre varchar(30),
fecha_solicitud datetime,
idestado int,
foreign key(idestado) references tb_EstadoSolicitudConexion(idEstado)

);



/* Tablas de cambio de categoria*/
create table tb_TipoPredio(
idTipoPredio int primary key auto_increment,
desTipoPredio varchar(100)
);


create table tb_Predio(
idPredio int primary key auto_increment,
idTipoPredio int references tb_TipoPredio(idTipoPredio),
id_prov char(3) references tb_provincia,
id_dis int references tb_distrito,
id_loc int references tb_localidad,
idcalle int references tb_calle,
numPredio varchar(200),
CoordenadasPredio varchar(100)
);

create table tb_Categoria(
idCategoria int primary key auto_increment,
desCategoria varchar(100)
);


create table tb_Suministro(
idSuministro int primary key auto_increment,
idPredio int references tb_Predio(idPredio),
idCategoria int references tb_Categoria(idCategoria)
);


create table tb_EstadoSolicitudCambio(
idEstado int primary key auto_increment,
desEstado varchar(100)
);

create table tb_SolCambioCategoria(
idSolCategoria int primary key auto_increment,
idSuministro int references tb_Suministro,
idEstado int references tb_EstadoSolicitudCambio,
dniSolicitud varchar(250),
archivo1 varchar(250),
fechaSolicitud datetime
);

create table tb_DetalleSolicitudCambioCat(
idSolCategoria int references tb_SolCambioCategoria,
idEstado int references tb_EstadoSolicitudCambio,
idUsuario int references tb_usuario,
fechaDetalle datetime
);

create table tb_MensajesAlerta(
idMensajeAlerta int auto_increment primary key,
tituloMensajeAlerta varchar(50),
cuerpoMensajeAlerta varchar(50),
imagenMensajeAlerta varchar(50)
);

/*Datos en Perfiles*/
INSERT INTO tb_perfil VALUES(null,'Administrador',1,1,1,1,1,1,1,1,1);
INSERT INTO tb_perfil VALUES(null,'Tecnico',1,1,1,1,1,1,1,1,1);
INSERT INTO tb_perfil VALUES(null,'Cajero',1,1,1,1,1,1,1,1,1);
INSERT INTO tb_perfil VALUES(null,'Perfil_Prueba',1,0,1,0,1,1,0,0,1);

/*Datos en Usuarios*/
INSERT INTO tb_usuario VALUES(null,1,'lysander','root','Felix','Apaza','Arroyo','43836055','gato@gato.com','519999999' );
INSERT INTO tb_usuario VALUES(null,1,'rdelgado','root','Renzo','Delgado','Guerra','76527637','renzodelgadoguerra@gmail.com','513302597');
INSERT INTO tb_usuario VALUES(null,2,'oldkefka','qv2','Ricardo','Quevedo','Grimaldo','72454564','dfdf@dsfdsf.com','519999999');
INSERT INTO tb_usuario VALUES(null,3,'csonan','testing','Carlos','Sonan','Yonashiro','89999993','3423@gf.com','519999999');
INSERT INTO tb_usuario VALUES(null,3,'acoquis','testing','Andre','Coquis','Raffo','89999994','co@dsd.com','519999999');


/*Datos en Provincia (completa)*/
INSERT INTO tb_provincia VALUES('ARE','Arequipa');
INSERT INTO tb_provincia VALUES('CAM','Camaná');
INSERT INTO tb_provincia VALUES('car','Caravelí');
INSERT INTO tb_provincia VALUES('CAS','Castilla');
INSERT INTO tb_provincia VALUES('CAY','Caylloma');
INSERT INTO tb_provincia VALUES('CON','Condesuyos');
INSERT INTO tb_provincia VALUES('ISL','Islay');
INSERT INTO tb_provincia VALUES('LUN','La Unión');

/*Datos en Distrito (completa)*/
INSERT INTO tb_distrito VALUES(1,'Alto Selva Alegre','are');
INSERT INTO tb_distrito VALUES(2,'Arequipa','are');
INSERT INTO tb_distrito VALUES(3,'Cayma','are');
INSERT INTO tb_distrito VALUES(4,'Cerro Colorado','are');
INSERT INTO tb_distrito VALUES(5,'Characato','are');
INSERT INTO tb_distrito VALUES(6,'Chiguata','are');
INSERT INTO tb_distrito VALUES(7,'Jacobo Hunter','are');
INSERT INTO tb_distrito VALUES(8,'José Luis Bustamante y Rivero','are');
INSERT INTO tb_distrito VALUES(9,'La Joya','are');
INSERT INTO tb_distrito VALUES(10,'Mariano Melgar','are');
INSERT INTO tb_distrito VALUES(11,'Miraflores','are');
INSERT INTO tb_distrito VALUES(12,'Mollebaya','are');
INSERT INTO tb_distrito VALUES(13,'Paucarpata','are');
INSERT INTO tb_distrito VALUES(14,'Pocsi','are');
INSERT INTO tb_distrito VALUES(15,'Polobaya','are');
INSERT INTO tb_distrito VALUES(16,'Quequeña','are');
INSERT INTO tb_distrito VALUES(17,'Sabandía','are');
INSERT INTO tb_distrito VALUES(18,'Sachaca','are');
INSERT INTO tb_distrito VALUES(19,'San Juan de Siguas','are');
INSERT INTO tb_distrito VALUES(20,'San Juan de Tarucani','are');
INSERT INTO tb_distrito VALUES(21,'Santa Isabel de Siguas','are');
INSERT INTO tb_distrito VALUES(22,'Santa Rita de Siguas','are');
INSERT INTO tb_distrito VALUES(23,'Socabaya','are');
INSERT INTO tb_distrito VALUES(24,'Tiabaya','are');
INSERT INTO tb_distrito VALUES(25,'Uchumayo','are');
INSERT INTO tb_distrito VALUES(26,'Vitor','are');
INSERT INTO tb_distrito VALUES(27,'Yanahuara','are');
INSERT INTO tb_distrito VALUES(28,'Yarabamba','are');
INSERT INTO tb_distrito VALUES(29,'Yura','are');
INSERT INTO tb_distrito VALUES(30,'Camaná','cam');
INSERT INTO tb_distrito VALUES(31,'José María Quimper','cam');
INSERT INTO tb_distrito VALUES(32,'Mariano Nicolás Valcarcel','cam');
INSERT INTO tb_distrito VALUES(33,'Mariscal Cáceres','cam');
INSERT INTO tb_distrito VALUES(34,'Nicolás de Piérola','cam');
INSERT INTO tb_distrito VALUES(35,'Ocoña','cam');
INSERT INTO tb_distrito VALUES(36,'Quilca','cam');
INSERT INTO tb_distrito VALUES(37,'Samuel Pastor','cam');
INSERT INTO tb_distrito VALUES(38,'Caravelí','car');
INSERT INTO tb_distrito VALUES(39,'Acarí','car');
INSERT INTO tb_distrito VALUES(40,'Atico','car');
INSERT INTO tb_distrito VALUES(41,'Atiquipa','car');
INSERT INTO tb_distrito VALUES(42,'Bella Unión','car');
INSERT INTO tb_distrito VALUES(43,'Cahuacho','car');
INSERT INTO tb_distrito VALUES(44,'Chala','car');
INSERT INTO tb_distrito VALUES(45,'Chaparra','car');
INSERT INTO tb_distrito VALUES(46,'Huanuhuanu','car');
INSERT INTO tb_distrito VALUES(47,'Jaqui','car');
INSERT INTO tb_distrito VALUES(48,'Lomas','car');
INSERT INTO tb_distrito VALUES(49,'Quicacha','car');
INSERT INTO tb_distrito VALUES(50,'Yauca','car');
INSERT INTO tb_distrito VALUES(51,'Aplao','cas');
INSERT INTO tb_distrito VALUES(52,'Andahua','cas');
INSERT INTO tb_distrito VALUES(53,'Ayo','cas');
INSERT INTO tb_distrito VALUES(54,'Chachas','cas');
INSERT INTO tb_distrito VALUES(55,'Chilcaymarca','cas');
INSERT INTO tb_distrito VALUES(56,'Choco','cas');
INSERT INTO tb_distrito VALUES(57,'Huancarqui','cas');
INSERT INTO tb_distrito VALUES(58,'Machaguay','cas');
INSERT INTO tb_distrito VALUES(59,'Orcopampa','cas');
INSERT INTO tb_distrito VALUES(60,'Pampacolca','cas');
INSERT INTO tb_distrito VALUES(61,'Tipán','cas');
INSERT INTO tb_distrito VALUES(62,'Uñón','cas');
INSERT INTO tb_distrito VALUES(63,'Uraca - Corire','cas');
INSERT INTO tb_distrito VALUES(64,'Viraco','cas');
INSERT INTO tb_distrito VALUES(65,'Achoma','cay');
INSERT INTO tb_distrito VALUES(66,'Cabanaconde','cay');
INSERT INTO tb_distrito VALUES(67,'Callalli','cay');
INSERT INTO tb_distrito VALUES(68,'Caylloma','cay');
INSERT INTO tb_distrito VALUES(69,'Chivay','cay');
INSERT INTO tb_distrito VALUES(70,'Coporaque','cay');
INSERT INTO tb_distrito VALUES(71,'Huambo','cay');
INSERT INTO tb_distrito VALUES(72,'Huanca','cay');
INSERT INTO tb_distrito VALUES(73,'Ichupampa','cay');
INSERT INTO tb_distrito VALUES(74,'Lari','cay');
INSERT INTO tb_distrito VALUES(75,'Lluta','cay');
INSERT INTO tb_distrito VALUES(76,'Maca','cay');
INSERT INTO tb_distrito VALUES(77,'Madrigal','cay');
INSERT INTO tb_distrito VALUES(78,'San Antonio de Chuca','cay');
INSERT INTO tb_distrito VALUES(79,'Sibayo','cay');
INSERT INTO tb_distrito VALUES(80,'Tapay','cay');
INSERT INTO tb_distrito VALUES(81,'Tisco','cay');
INSERT INTO tb_distrito VALUES(82,'Tuti','cay');
INSERT INTO tb_distrito VALUES(83,'Yanque','cay');
INSERT INTO tb_distrito VALUES(84,'Chuquibamba','con');
INSERT INTO tb_distrito VALUES(85,'Andaray','con');
INSERT INTO tb_distrito VALUES(86,'Cayarani','con');
INSERT INTO tb_distrito VALUES(87,'Chichas','con');
INSERT INTO tb_distrito VALUES(88,'Iray','con');
INSERT INTO tb_distrito VALUES(89,'Río Grande','con');
INSERT INTO tb_distrito VALUES(90,'Salamanca','con');
INSERT INTO tb_distrito VALUES(91,'Yanaquihua - Ispacas','con');
INSERT INTO tb_distrito VALUES(92,'Mollendo','isl');
INSERT INTO tb_distrito VALUES(93,'Cocachacra','isl');
INSERT INTO tb_distrito VALUES(94,'Deán Valdivia','isl');
INSERT INTO tb_distrito VALUES(95,'Islay','isl');
INSERT INTO tb_distrito VALUES(96,'Mejía','isl');
INSERT INTO tb_distrito VALUES(97,'Punta de Bombón','isl');
INSERT INTO tb_distrito VALUES(98,'Alca','lun');
INSERT INTO tb_distrito VALUES(99,'Charcana','lun');
INSERT INTO tb_distrito VALUES(100,'Huaynacotas','lun');
INSERT INTO tb_distrito VALUES(101,'Pampamarca','lun');
INSERT INTO tb_distrito VALUES(102,'Puyca','lun');
INSERT INTO tb_distrito VALUES(103,'Quechualla','lun');
INSERT INTO tb_distrito VALUES(104,'Sayla','lun');
INSERT INTO tb_distrito VALUES(105,'Tauría','lun');
INSERT INTO tb_distrito VALUES(106,'Tomepampa','lun');
INSERT INTO tb_distrito VALUES(107,'Toro','lun');

/*Datos en Localidades (solo Arequipa/centro, Arequipa... al parecer faltan algunas, o hay partes SIN nombre)*/
INSERT INTO tb_localidad VALUES(null,'Amautas','are',2);
INSERT INTO tb_localidad VALUES(null,'Asvea','are',2);
INSERT INTO tb_localidad VALUES(null,'Atlas','are',2);
INSERT INTO tb_localidad VALUES(null,'Barrio Ingles','are',2);
INSERT INTO tb_localidad VALUES(null,'Casa Lago San Jose','are',2);
INSERT INTO tb_localidad VALUES(null,'Castelar','are',2);
INSERT INTO tb_localidad VALUES(null,'Centro Historico','are',2);
INSERT INTO tb_localidad VALUES(null,'Cesar Vallejo','are',2);
INSERT INTO tb_localidad VALUES(null,'Febn','are',2);
INSERT INTO tb_localidad VALUES(null,'Gloria 4','are',2);
INSERT INTO tb_localidad VALUES(null,'Juventud Ferroviaria','are',2);
INSERT INTO tb_localidad VALUES(null,'La Perla','are',2);
INSERT INTO tb_localidad VALUES(null,'La Recoleta','are',2);
INSERT INTO tb_localidad VALUES(null,'Lambramani','are',2);
INSERT INTO tb_localidad VALUES(null,'Los Frutales','are',2);
INSERT INTO tb_localidad VALUES(null,'Magisterial','are',2);
INSERT INTO tb_localidad VALUES(null,'Municipal','are',2);
INSERT INTO tb_localidad VALUES(null,'Pablo VI','are',2);
INSERT INTO tb_localidad VALUES(null,'Parque Industrial','are',2);
INSERT INTO tb_localidad VALUES(null,'San Francisco de Asis','are',2);
INSERT INTO tb_localidad VALUES(null,'San Jerónimo','are',2);
INSERT INTO tb_localidad VALUES(null,'Selva Alegre','are',2);
INSERT INTO tb_localidad VALUES(null,'Sidsur','are',2);
INSERT INTO tb_localidad VALUES(null,'Tingo','are',2);
INSERT INTO tb_localidad VALUES(null,'Umacollo','are',2);
INSERT INTO tb_localidad VALUES(null,'Vallecito','are',2);
INSERT INTO tb_localidad VALUES(null,'Villa Hermosa','are',2);
INSERT INTO tb_localidad VALUES(null,'Villa Los Girasoles','are',2);
INSERT INTO tb_localidad VALUES(null,'Zemanat','are',2);
INSERT INTO tb_localidad VALUES(null,'--','are',2);

/*Datos en Calles (solo Centro historico, Arequipa/centro, Arequipa)*/
INSERT INTO tb_calle VALUES(null,'Perú','are',2,7);
INSERT INTO tb_calle VALUES(null,'Pizarro','are',2,7);
INSERT INTO tb_calle VALUES(null,'Palacio Viejo','are',2,7);
INSERT INTO tb_calle VALUES(null,'Consuelo','are',2,7);
INSERT INTO tb_calle VALUES(null,'Virgen del Pilar','are',2,30); /*CALLE DE SEDAPAR*/
INSERT INTO tb_calle VALUES(null,'La Merced','are',2,7); /*CALLE DE caja municipal*/
INSERT INTO tb_calle VALUES(null,'Santa Catalina','are',2,7); /*CALLE DE Monasterio Santa Catalina*/


/*Datos Estado Solicitud Nueva Conexi�n*/
INSERT INTO tb_EstadoSolicitudConexion VALUES(null,'Pendiente');
INSERT INTO tb_EstadoSolicitudConexion VALUES(null,'Aprobada');
INSERT INTO tb_EstadoSolicitudConexion VALUES(null,'Rechazada');
INSERT INTO tb_EstadoSolicitudConexion VALUES(null,'Contratada');

/*Datos en TEST SOLICITUD*/
INSERT INTO tb_test_solicitud VALUES(null,'Renzo Delgado','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Felix Apaza','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Ricardo Quevedo','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Carlos Sonan','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Andre Coquis','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Juan Carlos Espinoza','2013-12-26','Aprobada');
INSERT INTO tb_test_solicitud VALUES(null,'Tilsa Lozano','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Loco Vargas','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Juan Perez','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Maria Arias','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Augusto Atuncito','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Lidia Cuchi','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Javier Tomoya','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Pepe Lucho','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Jose Jose','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Tamara Lindo Loo','2013-12-26','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Jean Luis Uribe','2013-12-26','Pendiente');	


/*Datos en Cambio de categoria*/
INSERT INTO tb_TipoPredio VALUES(null,'Rural');
INSERT INTO tb_TipoPredio VALUES(null,'Domestica');
INSERT INTO tb_TipoPredio VALUES(null,'Social');
INSERT INTO tb_TipoPredio VALUES(null,'Comercial');
INSERT INTO tb_TipoPredio VALUES(null,'Industrial');
INSERT INTO tb_TipoPredio VALUES(null,'Estatal');

INSERT INTO tb_Predio VALUES(null,6,'are',2,30,5,'1701','-16.411667,-71.532967'); /* SEDAPAR */
INSERT INTO tb_Predio VALUES(null,6,'are',2,7,6,'106','-16.399335,-71.537484'); /* Caja Municipal */
INSERT INTO tb_Predio VALUES(null,3,'are',2,7,7,'301','-16.395305,-71.536795'); /* Monasterio Santa Catalina */

INSERT INTO tb_Categoria VALUES(null,'Categoria Social'); 
INSERT INTO tb_Categoria VALUES(null,'Categoria Domestica');
INSERT INTO tb_Categoria VALUES(null,'Comercial y Otros');
INSERT INTO tb_Categoria VALUES(null,'Industrial');
INSERT INTO tb_Categoria VALUES(null,'Estatal');

INSERT INTO tb_Suministro VALUES(null,1,5);
INSERT INTO tb_Suministro VALUES(null,2,3);
INSERT INTO tb_Suministro VALUES(null,3,3);

INSERT INTO tb_EstadoSolicitudCambio VALUES(null,'Registrada');
INSERT INTO tb_EstadoSolicitudCambio VALUES(null,'Validado');
INSERT INTO tb_EstadoSolicitudCambio VALUES(null,'Asignada a Inspeccion');
INSERT INTO tb_EstadoSolicitudCambio VALUES(null,'Inspeccionada');
INSERT INTO tb_EstadoSolicitudCambio VALUES(null,'Evaluada');
INSERT INTO tb_EstadoSolicitudCambio VALUES(null,'Finalizada');

INSERT INTO tb_SolCambioCategoria VALUES(null,1,1,null,null,'2013-12-31');
INSERT INTO tb_SolCambioCategoria VALUES(null,2,1,null,null,'2013-12-31');
INSERT INTO tb_SolCambioCategoria VALUES(null,3,1,null,null,'2013-12-31');

INSERT INTO tb_DetalleSolicitudCambioCat VALUES(1,1,1,'2013-12-31');
INSERT INTO tb_DetalleSolicitudCambioCat VALUES(2,1,2,'2013-12-31');
INSERT INTO tb_DetalleSolicitudCambioCat VALUES(3,1,3,'2013-12-31');

INSERT INTO tb_MensajesAlerta VALUES(null,'Proyecto Breakers','# registrado correctamente','thumb_up.png');
INSERT INTO tb_MensajesAlerta VALUES(null,'Proyecto Breakers','Hola #, bienvenido a la intranet de SEDAPAR','welcome.png');
INSERT INTO tb_MensajesAlerta VALUES(null,'Proyecto Breakers','# actualizado correctamente','refresh.png');
INSERT INTO tb_MensajesAlerta VALUES(null,'Proyecto Breakers','# eliminado correctamente','trash.png');
INSERT INTO tb_MensajesAlerta VALUES(null,'Proyecto Breakers','Debe seleccionar un # ','warning.png');
/* BEGINS PROCEDURES*/

DELIMITER $
CREATE PROCEDURE usp_listarPerfiles()
BEGIN
	SELECT * FROM TB_PERFIL;
END$

DELIMITER $
CREATE PROCEDURE usp_UltimoPerfil()
BEGIN
	SELECT MAX(idPerfil)+1 as idPerfil FROM TB_PERFIL;
END$

DELIMITER $
CREATE PROCEDURE usp_registrarPerfil(
desPerfil varchar(50),moduloContratos tinyint,moduloCategorias tinyint,
moduloLiquidacion tinyint,moduloReportes tinyint,moduloManClientes tinyint,
moduloManPerfiles tinyint,moduloManUsuarios tinyint,moduloBuzon tinyint,moduloCalendario tinyint)
BEGIN
	INSERT INTO TB_PERFIL(idPerfil,desPerfil,moduloContratos,moduloCategorias,moduloLiquidacion,moduloReportes,
	moduloManClientes,moduloManPerfiles,moduloManUsuarios,moduloBuzon,moduloCalendario)
	VALUES(null,desPerfil,moduloContratos,moduloCategorias,moduloLiquidacion,moduloReportes,
	moduloManClientes,moduloManPerfiles,moduloManUsuarios,moduloBuzon,moduloCalendario);
END$


DELIMITER $
CREATE PROCEDURE usp_actualizarPerfil(
vidPerfil int,vdesPerfil varchar(50),vmoduloContratos tinyint,vmoduloCategorias tinyint,
vmoduloLiquidacion tinyint,vmoduloReportes tinyint,vmoduloManClientes tinyint,
vmoduloManPerfiles tinyint,vmoduloManUsuarios tinyint,vmoduloBuzon tinyint,vmoduloCalendario tinyint)
BEGIN
	UPDATE TB_PERFIL SET desPerfil=vdesPerfil, moduloContratos=vmoduloContratos,
				moduloCategorias=vmoduloCategorias, moduloLiquidacion=vmoduloLiquidacion,
				moduloReportes=vmoduloReportes, moduloManClientes=vmoduloManClientes,
				moduloManPerfiles=vmoduloManPerfiles, moduloManUsuarios=vmoduloManUsuarios,
				moduloManUsuarios=vmoduloManUsuarios, moduloBuzon=vmoduloBuzon,
				moduloCalendario=vmoduloCalendario WHERE idPerfil=vidPerfil;
END$

DELIMITER $
CREATE PROCEDURE usp_eliminarPerfil(vidPerfil int)
BEGIN
	DELETE FROM TB_PERFIL WHERE idPerfil=vidPerfil;
END$

/*USUARIO*/
DELIMITER $
CREATE PROCEDURE usp_listarUsuario()
BEGIN
	SELECT * FROM tb_usuario;
END$

DELIMITER $
CREATE PROCEDURE usp_UltimoUsuario()
BEGIN
	SELECT MAX(idUsuario)+1 as idUsuario FROM tb_usuario;
END$

DELIMITER $
CREATE PROCEDURE usp_registrarUsuario(
idPerfil int,userUsuario varchar(10),passUsuario varchar(10),
nomUsuario varchar(30),apepaUsuario varchar(30),apemaUsuario varchar(30),
dniusuario varchar(10),correousuario varchar(30), telefonousuario char(9))
BEGIN
	INSERT INTO TB_usuario(idusuario,idPerfil,userusuario,passusuario,nomusuario,apepausuario,
	apemausuario,dniusuario,correousuario,telefonousuario)
	VALUES(null,idPerfil,userusuario,passusuario,nomusuario,apepausuario,
	apemausuario,dniusuario,correousuario,telefonousuario);
END$


DELIMITER $
CREATE PROCEDURE usp_actualizarUsuario(
vidusuario int,vidPerfil int,vuserUsuario varchar(10),vpassUsuario varchar(10),
vnomUsuario varchar(30),vapepaUsuario varchar(30),vapemaUsuario varchar(30),
vdniusuario varchar(10),vcorreousuario varchar(30), vtelefonousuario char(9))
BEGIN
	UPDATE tb_usuario SET idperfil=vidperfil,userusuario=vuserusuario,passusuario=vpassusuario,
	nomusuario=vnomusuario,apepausuario=vapepausuario,apemausuario=vapemausuario,
	dniusuario=vdniusuario,correousuario=vcorreousuario,telefonousuario=vtelefonousuario WHERE idusuario=vidusuario;
END$



DELIMITER $

CREATE PROCEDURE usp_eliminarUsuario(idUsu int)
BEGIN
	DELETE FROM TB_USUARIO WHERE idUsuario=idUsu;
END$

DELIMITER $
CREATE PROCEDURE usp_buscarUsuario(idUsu int)
BEGIN
	SELECT * FROM TB_USUARIO WHERE idUsuario=idUsu;
END$


DELIMITER $
CREATE PROCEDURE usp_listarMensajesAlerta()
BEGIN
	SELECT * FROM tb_MensajesAlerta;
END$
