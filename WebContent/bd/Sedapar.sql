DROP DATABASE IF EXISTS `DB_Sedapar` ; 
create database DB_Sedapar;
use DB_Sedapar;

create table tb_valorizaciones(
idValoriza int primary key auto_increment,
desValoriza varchar(40),
precioValoriza decimal
);


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
id_prov int primary key auto_increment,
nombre varchar(30)
);

create table tb_distrito(
id_dis int primary key auto_increment,
nombre varchar(30),
id_prov int references tb_provincia
);

create table tb_localidad(
id_loc int primary key auto_increment,
nombre varchar(30),
id_prov int references tb_provincia,
id_dis int references tb_distrito
);

create table tb_calle(
id_calle int primary key auto_increment,
nombre varchar(30),
id_prov int references tb_provincia,
id_dis int references tb_distrito,
id_loc int references tb_localidad
);

create table tb_tipoDoc(
idTipoDoc int primary key auto_increment,
desTipoDoc varchar(30)
);

create table tb_TipoPredio(
idTipoPredio int primary key auto_increment,
desTipoPredio varchar(100)
);

create table tb_estadoPredio(
idEstadoPredio int primary key auto_increment,
desEstadoPredio varchar(40)
);

create table tb_diametroConexion(
idDiametroConexion int primary key auto_increment,
desDiametroConexion varchar(10)
);

create table tb_EstadoSolicitudNuevaConexion(
idEstadoSolicitudNuevaConexion int primary key auto_increment,
desEstadoSolicitudNuevaConexion varchar(100)
);

create table tb_solicitudNuevaConexion(
idSolicitud int primary key auto_increment,
razonsocial varchar(50),
ruc varchar(11),
url varchar(50),
nombres varchar(50) not null,
apepat varchar(50) not null,
apemat varchar(50) not null,
idTipoDoc int not null, 
numDoc varchar(30) not null,
correo varchar(50) not null,
telefono varchar(9),
celular varchar(11),
id_calle int,
id_localidad int, 
id_distrito int, 
id_provincia int, 
numero varchar(10),
referencias varchar(100),
idEstadoPredio int,
idTipoPredio int,
area varchar(10),
idDiametroConexion int,
costo decimal,
numcuotas int,
coordenadas varchar(40),
idEstadoSolicitudNuevaConexion int,
fileDocumentoIdentidad longblob,
fileCartaPoder longblob,
filePartidaConstancia longblob,
fileMemoria longblob,
fileReciboVecino longblob,
filePlanoInstalaciones longblob,

foreign key(idTipoDoc) references tb_tipoDoc(idTipoDoc),
foreign key(id_calle) references tb_calle(id_calle),
foreign key(id_localidad) references tb_localidad(id_loc),
foreign key(id_distrito) references tb_distrito(id_dis),
foreign key(id_provincia) references tb_provincia(id_prov),
foreign key(idEstadoPredio) references tb_estadoPredio(idEstadoPredio),
foreign key(idTipoPredio) references tb_TipoPredio(idTipoPredio),
foreign key(idDiametroConexion) references tb_diametroConexion(idDiametroConexion),
foreign key(idEstadoSolicitudNuevaConexion) references tb_EstadoSolicitudNuevaConexion(idEstadoSolicitudNuevaConexion)
);







/* Tablas de cambio de categoria*/


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

/*Datos en Valorizaciones*/
INSERT INTO tb_valorizaciones VALUES(null,'',0);
INSERT INTO tb_valorizaciones VALUES(null,'',0);
INSERT INTO tb_valorizaciones VALUES(null,'',0);
INSERT INTO tb_valorizaciones VALUES(null,'',0);
INSERT INTO tb_valorizaciones VALUES(null,'',0);
INSERT INTO tb_valorizaciones VALUES(null,'',0);
INSERT INTO tb_valorizaciones VALUES(null,'',0);
INSERT INTO tb_valorizaciones VALUES(null,'',0);
INSERT INTO tb_valorizaciones VALUES(null,'',0);
INSERT INTO tb_valorizaciones VALUES(null,'',0);
INSERT INTO tb_valorizaciones VALUES(null,'',0);
INSERT INTO tb_valorizaciones VALUES(null,'',0);
INSERT INTO tb_valorizaciones VALUES(null,'',0);


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
INSERT INTO tb_provincia VALUES(null,'Arequipa');
INSERT INTO tb_provincia VALUES(null,'Camaná');
INSERT INTO tb_provincia VALUES(null,'Caravelí');
INSERT INTO tb_provincia VALUES(null,'Castilla');
INSERT INTO tb_provincia VALUES(null,'Caylloma');
INSERT INTO tb_provincia VALUES(null,'Condesuyos');
INSERT INTO tb_provincia VALUES(null,'Islay');
INSERT INTO tb_provincia VALUES(null,'La Unión');

/*Datos en Distrito (completa)*/
INSERT INTO tb_distrito VALUES(null,'Alto Selva Alegre',1);
INSERT INTO tb_distrito VALUES(null,'Arequipa',1);
INSERT INTO tb_distrito VALUES(null,'Cayma',1);
INSERT INTO tb_distrito VALUES(null,'Cerro Colorado',1);
INSERT INTO tb_distrito VALUES(null,'Characato',1);
INSERT INTO tb_distrito VALUES(null,'Chiguata',1);
INSERT INTO tb_distrito VALUES(null,'Jacobo Hunter',1);
INSERT INTO tb_distrito VALUES(null,'José Luis Bustamante y Rivero',1);
INSERT INTO tb_distrito VALUES(null,'La Joya',1);
INSERT INTO tb_distrito VALUES(null,'Mariano Melgar',1);
INSERT INTO tb_distrito VALUES(null,'Miraflores',1);
INSERT INTO tb_distrito VALUES(null,'Mollebaya',1);
INSERT INTO tb_distrito VALUES(null,'Paucarpata',1);
INSERT INTO tb_distrito VALUES(null,'Pocsi',1);
INSERT INTO tb_distrito VALUES(null,'Polobaya',1);
INSERT INTO tb_distrito VALUES(null,'Quequeña',1);
INSERT INTO tb_distrito VALUES(null,'Sabandía',1);
INSERT INTO tb_distrito VALUES(null,'Sachaca',1);
INSERT INTO tb_distrito VALUES(null,'San Juan de Siguas',1);
INSERT INTO tb_distrito VALUES(null,'San Juan de Tarucani',1);
INSERT INTO tb_distrito VALUES(null,'Santa Isabel de Siguas',1);
INSERT INTO tb_distrito VALUES(null,'Santa Rita de Siguas',1);
INSERT INTO tb_distrito VALUES(null,'Socabaya',1);
INSERT INTO tb_distrito VALUES(null,'Tiabaya',1);
INSERT INTO tb_distrito VALUES(null,'Uchumayo',1);
INSERT INTO tb_distrito VALUES(null,'Vitor',1);
INSERT INTO tb_distrito VALUES(null,'Yanahuara',1);
INSERT INTO tb_distrito VALUES(null,'Yarabamba',1);
INSERT INTO tb_distrito VALUES(null,'Yura',1);
INSERT INTO tb_distrito VALUES(null,'Camaná',2);
INSERT INTO tb_distrito VALUES(null,'José María Quimper',2);
INSERT INTO tb_distrito VALUES(null,'Mariano Nicolás Valcarcel',2);
INSERT INTO tb_distrito VALUES(null,'Mariscal Cáceres',2);
INSERT INTO tb_distrito VALUES(null,'Nicolás de Piérola',2);
INSERT INTO tb_distrito VALUES(null,'Ocoña',2);
INSERT INTO tb_distrito VALUES(null,'Quilca',2);
INSERT INTO tb_distrito VALUES(null,'Samuel Pastor',2);
INSERT INTO tb_distrito VALUES(null,'Caravelí',3);
INSERT INTO tb_distrito VALUES(null,'Acarí',3);
INSERT INTO tb_distrito VALUES(null,'Atico',3);
INSERT INTO tb_distrito VALUES(null,'Atiquipa',3);
INSERT INTO tb_distrito VALUES(null,'Bella Unión',3);
INSERT INTO tb_distrito VALUES(null,'Cahuacho',3);
INSERT INTO tb_distrito VALUES(null,'Chala',3);
INSERT INTO tb_distrito VALUES(null,'Chaparra',3);
INSERT INTO tb_distrito VALUES(null,'Huanuhuanu',3);
INSERT INTO tb_distrito VALUES(null,'Jaqui',3);
INSERT INTO tb_distrito VALUES(null,'Lomas',3);
INSERT INTO tb_distrito VALUES(null,'Quicacha',3);
INSERT INTO tb_distrito VALUES(null,'Yauca',3);
INSERT INTO tb_distrito VALUES(null,'Aplao',4);
INSERT INTO tb_distrito VALUES(null,'Andahua',4);
INSERT INTO tb_distrito VALUES(null,'Ayo',4);
INSERT INTO tb_distrito VALUES(null,'Chachas',4);
INSERT INTO tb_distrito VALUES(null,'Chilcaymarca',4);
INSERT INTO tb_distrito VALUES(null,'Choco',4);
INSERT INTO tb_distrito VALUES(null,'Huancarqui',4);
INSERT INTO tb_distrito VALUES(null,'Machaguay',4);
INSERT INTO tb_distrito VALUES(null,'Orcopampa',4);
INSERT INTO tb_distrito VALUES(null,'Pampacolca',4);
INSERT INTO tb_distrito VALUES(null,'Tipán',4);
INSERT INTO tb_distrito VALUES(null,'Uñón',4);
INSERT INTO tb_distrito VALUES(null,'Uraca - Corire',4);
INSERT INTO tb_distrito VALUES(null,'Viraco',4);
INSERT INTO tb_distrito VALUES(null,'Achoma',5);
INSERT INTO tb_distrito VALUES(null,'Cabanaconde',5);
INSERT INTO tb_distrito VALUES(null,'Callalli',5);
INSERT INTO tb_distrito VALUES(null,'Caylloma',5);
INSERT INTO tb_distrito VALUES(null,'Chivay',5);
INSERT INTO tb_distrito VALUES(null,'Coporaque',5);
INSERT INTO tb_distrito VALUES(null,'Huambo',5);
INSERT INTO tb_distrito VALUES(null,'Huanca',5);
INSERT INTO tb_distrito VALUES(null,'Ichupampa',5);
INSERT INTO tb_distrito VALUES(null,'Lari',5);
INSERT INTO tb_distrito VALUES(null,'Lluta',5);
INSERT INTO tb_distrito VALUES(null,'Maca',5);
INSERT INTO tb_distrito VALUES(null,'Madrigal',5);
INSERT INTO tb_distrito VALUES(null,'San Antonio de Chuca',5);
INSERT INTO tb_distrito VALUES(null,'Sibayo',5);
INSERT INTO tb_distrito VALUES(null,'Tapay',5);
INSERT INTO tb_distrito VALUES(null,'Tisco',5);
INSERT INTO tb_distrito VALUES(null,'Tuti',5);
INSERT INTO tb_distrito VALUES(null,'Yanque',5);
INSERT INTO tb_distrito VALUES(null,'Chuquibamba',6);
INSERT INTO tb_distrito VALUES(null,'Andaray',6);
INSERT INTO tb_distrito VALUES(null,'Cayarani',6);
INSERT INTO tb_distrito VALUES(null,'Chichas',6);
INSERT INTO tb_distrito VALUES(null,'Iray',6);
INSERT INTO tb_distrito VALUES(null,'Río Grande',6);
INSERT INTO tb_distrito VALUES(null,'Salamanca',6);
INSERT INTO tb_distrito VALUES(null,'Yanaquihua - Ispacas',6);
INSERT INTO tb_distrito VALUES(null,'Mollendo',7);
INSERT INTO tb_distrito VALUES(null,'Cocachacra',7);
INSERT INTO tb_distrito VALUES(null,'Deán Valdivia',7);
INSERT INTO tb_distrito VALUES(null,'Islay',7);
INSERT INTO tb_distrito VALUES(null,'Mejía',7);
INSERT INTO tb_distrito VALUES(null,'Punta de Bombón',7);
INSERT INTO tb_distrito VALUES(null,'Alca',8);
INSERT INTO tb_distrito VALUES(null,'Charcana',8);
INSERT INTO tb_distrito VALUES(null,'Huaynacotas',8);
INSERT INTO tb_distrito VALUES(null,'Pampamarca',8);
INSERT INTO tb_distrito VALUES(null,'Puyca',8);
INSERT INTO tb_distrito VALUES(null,'Quechualla',8);
INSERT INTO tb_distrito VALUES(null,'Sayla',8);
INSERT INTO tb_distrito VALUES(null,'Tauría',8);
INSERT INTO tb_distrito VALUES(null,'Tomepampa',8);
INSERT INTO tb_distrito VALUES(null,'Toro',8);

/*Datos en Localidades (solo Arequipa/centro, Arequipa... al parecer faltan algunas, o hay partes SIN nombre)*/
INSERT INTO tb_localidad VALUES(null,'Amautas',1,2);
INSERT INTO tb_localidad VALUES(null,'Asvea',1,2);
INSERT INTO tb_localidad VALUES(null,'Atlas',1,2);
INSERT INTO tb_localidad VALUES(null,'Barrio Ingles',1,2);
INSERT INTO tb_localidad VALUES(null,'Casa Lago San Jose',1,2);
INSERT INTO tb_localidad VALUES(null,'Castelar',1,2);
INSERT INTO tb_localidad VALUES(null,'Centro Historico',1,2);
INSERT INTO tb_localidad VALUES(null,'Cesar Vallejo',1,2);
INSERT INTO tb_localidad VALUES(null,'Febn',1,2);
INSERT INTO tb_localidad VALUES(null,'Gloria 4',1,2);
INSERT INTO tb_localidad VALUES(null,'Juventud Ferroviaria',1,2);
INSERT INTO tb_localidad VALUES(null,'La Perla',1,2);
INSERT INTO tb_localidad VALUES(null,'La Recoleta',1,2);
INSERT INTO tb_localidad VALUES(null,'Lambramani',1,2);
INSERT INTO tb_localidad VALUES(null,'Los Frutales',1,2);
INSERT INTO tb_localidad VALUES(null,'Magisterial',1,2);
INSERT INTO tb_localidad VALUES(null,'Municipal',1,2);
INSERT INTO tb_localidad VALUES(null,'Pablo VI',1,2);
INSERT INTO tb_localidad VALUES(null,'Parque Industrial',1,2);
INSERT INTO tb_localidad VALUES(null,'San Francisco de Asis',1,2);
INSERT INTO tb_localidad VALUES(null,'San Jerónimo',1,2);
INSERT INTO tb_localidad VALUES(null,'Selva Alegre',1,2);
INSERT INTO tb_localidad VALUES(null,'Sidsur',1,2);
INSERT INTO tb_localidad VALUES(null,'Tingo',1,2);
INSERT INTO tb_localidad VALUES(null,'Umacollo',1,2);
INSERT INTO tb_localidad VALUES(null,'Vallecito',1,2);
INSERT INTO tb_localidad VALUES(null,'Villa Hermosa',1,2);
INSERT INTO tb_localidad VALUES(null,'Villa Los Girasoles',1,2);
INSERT INTO tb_localidad VALUES(null,'Zemanat',1,2);

/*Datos en Calles (solo Centro historico, Arequipa/centro, Arequipa)*/
INSERT INTO tb_calle VALUES(null,'Perú',1,2,7);
INSERT INTO tb_calle VALUES(null,'Pizarro',1,2,7);
INSERT INTO tb_calle VALUES(null,'Palacio Viejo',1,2,7);
INSERT INTO tb_calle VALUES(null,'Consuelo',1,2,7);
INSERT INTO tb_calle VALUES(null,'Virgen del Pilar',1,2,30); /*CALLE DE SEDAPAR*/
INSERT INTO tb_calle VALUES(null,'La Merced',1,2,7); /*CALLE DE caja municipal*/
INSERT INTO tb_calle VALUES(null,'Santa Catalina',1,2,7); /*CALLE DE Monasterio Santa Catalina*/


/*Datos Estado Solicitud Nueva Conexi�n*/
INSERT INTO tb_tipoDoc VALUES(null,'DNI');
INSERT INTO tb_TipoDoc VALUES(null,'Carnet de Extranjeria');
INSERT INTO tb_TipoDoc VALUES(null,'Pasaporte');

INSERT INTO tb_estadoPredio VALUES(null,'En Construcci�n Habitado');
INSERT INTO tb_estadoPredio VALUES(null,'En Construcci�n Deshabitado');
INSERT INTO tb_estadoPredio VALUES(null,'Vivienda Habitada');
INSERT INTO tb_estadoPredio VALUES(null,'Vivienda Deshabitada');
INSERT INTO tb_estadoPredio VALUES(null,'Baldio');
INSERT INTO tb_estadoPredio VALUES(null,'Cercado');
INSERT INTO tb_estadoPredio VALUES(null,'Sin Especificar');

INSERT INTO tb_diametroConexion VALUES(null,'15');
INSERT INTO tb_diametroConexion VALUES(null,'20');
INSERT INTO tb_diametroConexion VALUES(null,'30');

INSERT INTO tb_EstadoSolicitudNuevaConexion VALUES(null,'Pendiente');
INSERT INTO tb_EstadoSolicitudNuevaConexion VALUES(null,'Aprobada');
INSERT INTO tb_EstadoSolicitudNuevaConexion VALUES(null,'Rechazada');
INSERT INTO tb_EstadoSolicitudNuevaConexion VALUES(null,'Contratada');


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
INSERT INTO tb_TipoPredio VALUES(null,'Domestico');
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
CREATE PROCEDURE usp_registrarSolicitudNuevaConexion(
razonsocial varchar(50),
ruc varchar(11),
url varchar(50),
nombres varchar(50),
apepat varchar(50),
apemat varchar(50),
idTipoDoc int, 
numDoc varchar(30),
correo varchar(50),
telefono varchar(9),
celular varchar(11),
id_calle int,
id_localidad int, 
id_distrito int, 
id_provincia int, 
numero varchar(10),
referencias varchar(100),
idEstadoPredio int,
idTipoPredio int,
area varchar(10),
idDiametroConexion int,
costo decimal,
numcuotas int,
coordenadas varchar(40)
)
BEGIN
	INSERT INTO tb_solicitudNuevaConexion VALUES(null,razonsocial,ruc,url,nombres,apepat,
												apemat,idTipoDoc,numDoc,correo,telefono,
												celular,id_calle,id_localidad,id_distrito,id_provincia,numero,referencias,idEstadoPredio,
												idTipoPredio,area,idDiametroConexion,costo,
												numcuotas,coordenadas,1,null,null,null,null,null,null);
												
END$


DELIMITER $
CREATE PROCEDURE usp_listarTiposDoc()
BEGIN
	SELECT * FROM tb_TIPODOC;
END$

DELIMITER $
CREATE PROCEDURE usp_listarEstadoPredio()
BEGIN
	SELECT * FROM TB_ESTADOPREDIO;
END$

DELIMITER $
CREATE PROCEDURE usp_listarTipoPredio()
BEGIN
	SELECT * FROM TB_TIPOPREDIO;
END$

DELIMITER $
CREATE PROCEDURE usp_listarDiametroConexion()
BEGIN
	SELECT * FROM TB_DIAMETROCONEXION;
END$


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


DELIMITER $
CREATE PROCEDURE usp_listarProvincias()
BEGIN
	SELECT * FROM tb_provincia;
END$

DELIMITER $
CREATE PROCEDURE usp_listarDistritos(Vcod_prov varchar(10) )
BEGIN
	SELECT id_dis,nombre FROM tb_distrito where id_prov=Vcod_prov;
END$


DELIMITER $
CREATE PROCEDURE usp_listarLocalidades(Vcod_dis varchar(10) )
BEGIN
	SELECT id_loc,nombre FROM tb_localidad where id_dis=Vcod_dis;
END$

DELIMITER $
CREATE PROCEDURE usp_listarCalles(Vcod_loc varchar(10) )
BEGIN
	SELECT id_calle,nombre FROM tb_calle where id_loc=Vcod_loc;
END$
