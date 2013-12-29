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
dniUsuario varchar(10)
);

create table tb_test_solicitud(
num_solicitud int primary key auto_increment,
nombre varchar(30),
fecha_solicitud varchar(20),
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
id_loc int primary key,
nombre varchar(30),
id_prov char(3) references tb_provincia,
id_dis int references tb_distrito
);

create table tb_calle(
id_calle primary key,
nombre varchar(30),
id_prov char(3) references tb_provincia,
id_dis int references tb_distrito,
id_loc int references tb_localidad
);

create table tb_solicitudNuevaConexion(
num_solicitud int primary key auto_increment,
nombre varchar(30),
fecha_solicitud varchar(20),
estado varchar(40) check(estado in ('Pendiente','Aprobada','Rechazada','Contratada'))
);


/*Datos en Perfiles*/
INSERT INTO tb_perfil VALUES(null,'Administrador',1,1,1,1,1,1,1,1,1);
INSERT INTO tb_perfil VALUES(null,'Tecnico',1,1,1,1,1,1,1,1,1);
INSERT INTO tb_perfil VALUES(null,'Cajero',1,1,1,1,1,1,1,1,1);

/*Datos en Usuarios*/
INSERT INTO tb_usuario VALUES(null,1,'lysander','root','Felix','Apaza','Arroyo','43836055');
INSERT INTO tb_usuario VALUES(null,1,'rdelgado','root','Renzo','Delgado','Guerra','76527637');
INSERT INTO tb_usuario VALUES(null,2,'oldkefka','qv2','Ricardo','Quevedo','Grimaldo','72454564');
INSERT INTO tb_usuario VALUES(null,3,'csonan','testing','Carlos','Sonan','Yonashiro','89999993');
INSERT INTO tb_usuario VALUES(null,3,'acoquis','testing','Andre','Coquis','Raffo','89999994');

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


/*Datos en TEST SOLICITUD*/
INSERT INTO tb_test_solicitud VALUES(null,'Renzo Delgado','26-12-2013','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Felix Apaza','26-12-2013','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Ricardo Quevedo','26-12-2013','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Carlos Sonan','26-12-2013','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Andre Coquis','26-12-2013','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Juan Carlos Espinoza','26-12-2013','Aprobada');
INSERT INTO tb_test_solicitud VALUES(null,'Tilsa Lozano','26-12-2013','Pendiente');
INSERT INTO tb_test_solicitud VALUES(null,'Loco Vargas','26-12-2013','Pendiente');
