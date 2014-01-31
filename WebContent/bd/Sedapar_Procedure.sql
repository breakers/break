

/* -BEGINS PROCEDURES-*/

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
coordenadas varchar(40),
fileDocumentoIdentidad mediumblob
)
BEGIN
	INSERT INTO tb_solicitudNuevaConexion VALUES(null,DATE_FORMAT(now(),'%Y/%m/%d'),razonsocial,ruc,url,nombres,apepat,
												apemat,idTipoDoc,numDoc,correo,telefono,
												celular,id_calle,id_localidad,id_distrito,id_provincia,numero,referencias,idEstadoPredio,
												idTipoPredio,area,idDiametroConexion,costo,
												numcuotas,coordenadas,1,fileDocumentoIdentidad,null,null,null,null,null);
												
END$


DELIMITER $
DROP PROCEDURE IF EXISTS usp_listarSolicitudes $
CREATE PROCEDURE usp_listarSolicitudes(estado int)
BEGIN
	select snc.idSolicitud,snc.nombres,snc.apepat,snc.apemat,snc.fechaSolicitud,esnc.desEstadoSolicitudNuevaConexion
	from tb_solicitudnuevaconexion snc inner join tb_estadosolicitudnuevaconexion esnc
	on snc.idEstadoSolicitudNuevaConexion = esnc.idEstadoSolicitudNuevaConexion
	where esnc.idEstadoSolicitudNuevaConexion=estado;
												
END$

DELIMITER $
CREATE PROCEDURE usp_mostrarDatosSolicitud(VidSolicitud int)
BEGIN
	select snc.idSolicitud,snc.fechaSolicitud,snc.razonsocial,snc.ruc,snc.url,snc.nombres,snc.apepat,
snc.apemat,td.desTipoDoc,snc.numDoc,snc.correo,snc.telefono,snc.celular,cal.nombre,loc.nombre,
dis.nombre,prov.nombre,snc.numero,snc.referencias,ep.desEstadoPredio,tp.desTipoPredio,snc.area,
dc.desDiametroConexion,snc.costo,snc.numcuotas,snc.coordenadas,esnc.desEstadoSolicitudNuevaConexion,
snc.fileDocumentoIdentidad,snc.fileCartaPoder,snc.filePartidaConstancia,snc.fileMemoria,
snc.fileReciboVecino,snc.filePlanoInstalaciones
from tb_solicitudnuevaconexion as snc
inner join tb_tipodoc as td on snc.idTipoDoc = td.idTipoDoc
inner join tb_calle as cal on snc.id_calle = cal.id_calle
inner join tb_localidad as loc on snc.id_localidad = loc.id_loc
inner join tb_distrito as dis on snc.id_distrito = dis.id_dis
inner join tb_provincia as prov on snc.id_provincia = prov.id_prov
inner join tb_estadopredio as ep on snc.idEstadoPredio = ep.idEstadoPredio
inner join tb_tipopredio as tp on snc.idTipoPredio = tp.idTipoPredio
inner join tb_diametroconexion as dc on snc.idDiametroConexion = dc.idDiametroConexion
inner join tb_estadosolicitudnuevaconexion as esnc on snc.idEstadoSolicitudNuevaConexion = esnc.idEstadoSolicitudNuevaConexion

WHERE snc.idSolicitud=VidSolicitud;
END$

DELIMITER $
CREATE PROCEDURE usp_evaluarSolicitud(VidSolicitud int, Vestado int)
BEGIN
	UPDATE tb_solicitudnuevaconexion set idEstadoSolicitudNuevaConexion=Vestado
	WHERE idSolicitud = VidSolicitud;
END $

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

