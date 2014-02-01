use DB_Sedapar;

insert into tb_tipo_cliente values (null,'Natural');
insert into tb_tipo_cliente values (null,'Juridica');

/*DATOS- inserts*/

/*Datos de Clientes*/
insert into tb_cliente values(null,1,'12345678','Juan Carlos','Marco','Cordova','jmarco@gmail.com','45612345','991234568',null,1,'12345678','Juan Carlos','Marco','Cordova');
insert into tb_cliente values(null,1,'45678921','Manuel','Leon','Garritas','mgarritas@gmail.com','45466455','99999999',null,1,'45678921','Manuel','Leon','Garritas');
insert into tb_cliente values(null,1,'45684521','Antonio','Marco','Marquinelli','antoniomar@gmail.com','35464587','992255225',null,1,'45684521','Antonio','Marco','Marquinelli');
insert into tb_cliente values(null,1,'12312312','Mario','Huaman','Valero','mariovalero@gmail.com','64658465','992256896',null,1,'12312312','Mario','Huaman','Valero');
insert into tb_cliente values(null,1,'96325841','Karla','Valentina','Matellini','karlaval@gmail.com','45632165','994488569',null,1,'96325841','Karla','Valentina','Matellini');
insert into tb_cliente values(null,1,'56565656','Julian','Vilavicencio','Moran','julimora@gmail.com','45687522','998877888',null,1,'56565656','Julian','Vilavicencio','Moran');
insert into tb_cliente values(null,2,'2043836055','Americos S.A.C.',null,null,'info@americos.com','45687522','998877888','http://www.americos.com',1,'56565656','Julian','Vilavicencio','Moran');
insert into tb_cliente values(null,2,'2012345678','Digital Enviorement S.A.A.',null,null,'suport@digitalenvieromentgroup.com','45687522','998877888','http://www.digitalenvieromentgroup.com',1,'43836055','Felix','Apaza','Arroyo');
insert into tb_cliente values(null,2,'1087654321','Edelar S.A.C',null,null,'edelar@edelar.pe','45687522','998877888','http://www.edelar.pe',1,'461234568','Mario','CastaÃ±eda','Jimenez');

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
INSERT INTO tb_perfil VALUES(null,'Gerencia',1,1,0,1,0,0,0,1,0);
INSERT INTO tb_perfil VALUES(null,'R.R.H.H',1,0,0,0,1,1,0,0,0);
INSERT INTO tb_perfil VALUES(null,'A.Contable',0,0,1,0,0,0,0,1,1);
INSERT INTO tb_perfil VALUES(null,'Cliente',1,0,1,0,0,0,0,1,1);


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
INSERT INTO tb_distrito VALUES(null,'Unión',4);
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
INSERT INTO tb_calle VALUES(null,'PerÃƒÂº',1,2,7);
INSERT INTO tb_calle VALUES(null,'Pizarro',1,2,7);
INSERT INTO tb_calle VALUES(null,'Palacio Viejo',1,2,7);
INSERT INTO tb_calle VALUES(null,'Consuelo',1,2,7);
INSERT INTO tb_calle VALUES(null,'Virgen del Pilar',1,2,29); /*CALLE DE SEDAPAR*/
INSERT INTO tb_calle VALUES(null,'La Merced',1,2,7); /*CALLE DE caja municipal*/
INSERT INTO tb_calle VALUES(null,'Santa Catalina',1,2,7); /*CALLE DE Monasterio Santa Catalina*/
INSERT INTO tb_calle VALUES(null,'San Agustin',1,2,7);
INSERT INTO tb_calle VALUES(null,'Moral',1,2,7);
INSERT INTO tb_calle VALUES(null,'Ugarte',1,2,7);
INSERT INTO tb_calle VALUES(null,'Villaliba',1,2,7);
INSERT INTO tb_calle VALUES(null,'Calle Sucre',1,2,7);
INSERT INTO tb_calle VALUES(null,'Chili',1,2,7);
INSERT INTO tb_calle VALUES(null,'Cruz Verde',1,2,7);
INSERT INTO tb_calle VALUES(null,'La Merced',1,2,7);
INSERT INTO tb_calle VALUES(null,'Rivero',1,2,7);
INSERT INTO tb_calle VALUES(null,'Pinos',1,2,7);
INSERT INTO tb_calle VALUES(null,'San Camilo',1,2,7);
INSERT INTO tb_calle VALUES(null,'San Franz',1,2,7);
INSERT INTO tb_calle VALUES(null,'Lirias',1,2,7);
INSERT INTO tb_calle VALUES(null,'Otero',1,2,7);
INSERT INTO tb_calle VALUES(null,'Union',1,2,7);
INSERT INTO tb_calle VALUES(null,'Olimpica',1,2,7);
INSERT INTO tb_calle VALUES(null,'San Juan',1,2,7);
INSERT INTO tb_calle VALUES(null,'San Martin',1,2,7);
INSERT INTO tb_calle VALUES(null,'Santa Tereza',1,2,7);
INSERT INTO tb_calle VALUES(null,'Ibanez',1,2,7);
INSERT INTO tb_calle VALUES(null,'El Sol',1,2,7);
INSERT INTO tb_calle VALUES(null,'Belen',1,2,7);
INSERT INTO tb_calle VALUES(null,'Jerusalen',1,2,7);
INSERT INTO tb_calle VALUES(null,'Ismael',1,2,7);
INSERT INTO tb_calle VALUES(null,'Isaac',1,2,7);
INSERT INTO tb_calle VALUES(null,'Mesias',1,2,7);
INSERT INTO tb_calle VALUES(null,'Josue',1,2,7);
INSERT INTO tb_calle VALUES(null,'Sinai',1,2,7);
INSERT INTO tb_calle VALUES(null,'Iberico',1,2,7);
INSERT INTO tb_calle VALUES(null,'Nazaret',1,2,7);
INSERT INTO tb_calle VALUES(null,'Ezequiel',1,2,7);
INSERT INTO tb_calle VALUES(null,'Esau',1,2,7);
INSERT INTO tb_calle VALUES(null,'Damasco',1,2,7);
INSERT INTO tb_calle VALUES(null,'Ponse',1,2,7);
INSERT INTO tb_calle VALUES(null,'Olimpia',1,2,7);


/*Datos Estado Solicitud Nueva Conexión*/
INSERT INTO tb_tipoDoc VALUES(null,'DNI');
INSERT INTO tb_TipoDoc VALUES(null,'Carnet de Extranjeria');
INSERT INTO tb_TipoDoc VALUES(null,'Pasaporte');

INSERT INTO tb_estadoPredio VALUES(null,'En Construcción Habitado');
INSERT INTO tb_estadoPredio VALUES(null,'En Construcción Deshabitado');
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

-- Inserts de Predio > idPredio,idTipoPredio,idEstadoPredio,id_provincia,id_distrito ,id_localidad,id_calle,numPredio,CoordenadasPredio
INSERT INTO tb_Predio VALUES(null,1,1,1,2,29,5,'1701','-16.411667,-71.532967'); /* SEDAPAR */
INSERT INTO tb_Predio VALUES(null,1,1,1,2,7,6,'106','-16.399335,-71.537484'); /* Caja Municipal */
INSERT INTO tb_Predio VALUES(null,1,3,1,2,7,7,'301','-16.395305,-71.536795'); /* Monasterio Santa Catalina */
INSERT INTO tb_Predio VALUES(null,1,3,1,2,7,7,'303','-16.395205,-71.536695'); /* direccion ficticia, reemplazar por datos reales*/
INSERT INTO tb_Predio VALUES(null,1,3,1,2,7,7,'305','-16.395105,-71.536595'); /* direccion ficticia, reemplazar por datos reales*/


INSERT INTO tb_Categoria VALUES(null,'Categoria Social'); 
INSERT INTO tb_Categoria VALUES(null,'Categoria Domestica');
INSERT INTO tb_Categoria VALUES(null,'Comercial y Otros');
INSERT INTO tb_Categoria VALUES(null,'Industrial');
INSERT INTO tb_Categoria VALUES(null,'Estatal');

INSERT INTO tb_solicitudNuevaConexion VALUES(null,null,null,null,null,'Prueba1','','',1,'','',null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO tb_solicitudNuevaConexion VALUES(null,null,null,null,null,'Prueba2','','',1,'','',null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO tb_solicitudNuevaConexion VALUES(null,null,null,null,null,'Prueba3','','',1,'','',null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);

-- contratos idContrato,idCliente,codSuministro,idPredio ,idCategoria,idUsuario,idSolicitud
INSERT INTO tb_Contrato VALUES(null,1,'1-1',1,2,1,1,1); 
INSERT INTO tb_Contrato VALUES(null,2,'2-2',2,2,1,2,1); 
INSERT INTO tb_Contrato VALUES(null,3,'3-3',3,2,1,3,1);
INSERT INTO tb_Contrato VALUES(null,1,'1-4',4,2,1,4,1);
INSERT INTO tb_Contrato VALUES(null,1,'1-5',5,2,1,5,1);
 
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

