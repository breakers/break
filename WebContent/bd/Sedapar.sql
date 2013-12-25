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

/*Datos en Perfiles*/
INSERT INTO tb_perfil VALUES(null,'Administrador',1,1,1,1,1,1,1,1,1);
INSERT INTO tb_perfil VALUES(null,'Tecnico',1,1,1,1,1,1,1,1,1);
INSERT INTO tb_perfil VALUES(null,'Cajero',1,1,1,1,1,1,1,1,1);

/*Datos en Usuarios*/
INSERT INTO tb_usuario VALUES(null,1,'lysander','root','Felix','Apaza','Arroyo','43836055');
INSERT INTO tb_usuario VALUES(null,1,'rdelgado','root','Renzo','Delgado','Guerra','76527637');
INSERT INTO tb_usuario VALUES(null,2,'oldkefka','qv2','Ricardo','Quevedo','Grimaldo','89999991');
INSERT INTO tb_usuario VALUES(null,3,'csonan','testing','Carlos','Sonan','Yonashiro','89999993');
INSERT INTO tb_usuario VALUES(null,3,'acoquis','testing','Andre','Coquis','Raffo','89999994');



