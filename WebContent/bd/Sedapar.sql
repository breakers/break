create database DB_Sedapar;
use DB_Sedapar;

create table tb_perfil(
idPerfil int primary key,
desPerfil varchar(50)
);

create table tb_usuario(
idUsuario int primary key,
idPerfil int references tb_perfil(idPerfil),
userUsuario varchar(10),
passUsuario varchar(10),
nomUsuario varchar(30),
apepaUsuario varchar(30),
apemaUsuario varchar(30),
dniUsuario varchar(10)
);

/*Datos en Perfiles*/
INSERT INTO tb_perfil VALUES(1,'Administrador');
INSERT INTO tb_perfil VALUES(2,'Tecnico');
INSERT INTO tb_perfil VALUES(3,'Cajero');

/*Datos en Usuarios*/
INSERT INTO tb_usuario VALUES(1,1,'lysander','root','Felix','Apaza','Arroyo','43836055');
INSERT INTO tb_usuario VALUES(2,1,'rdelgado','testing','Renzo','Delgado','Guerra','89999992');
INSERT INTO tb_usuario VALUES(3,2,'oldkefka','qv2','Ricardo','Quevedo','Grimaldo','89999991');
INSERT INTO tb_usuario VALUES(4,3,'csonan','testing','Carlos','Sonan','Yonashiro','89999993');
INSERT INTO tb_usuario VALUES(5,3,'acoquis','testing','Andre','Coquis','Raffo','89999994');