DROP DATABASE IF EXISTS `DB_Sedapar` ; 
create database DB_Sedapar;
use DB_Sedapar;

/*Tablas Generales*/
create table tb_perfil (
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

create table tb_usuario (
    idUsuario int primary key auto_increment,
    idPerfil int,
    userUsuario varchar(10),
    passUsuario varchar(10),
    nomUsuario varchar(30),
    apepaUsuario varchar(30),
    apemaUsuario varchar(30),
    dniUsuario varchar(10),
    correoUsuario varchar(30),
    telefonoUsuario char(9),
    foreign key (idPerfil)
        references tb_perfil (idPerfil)
);

create table tb_test_solicitud (
    num_solicitud int primary key auto_increment,
    nombre varchar(30),
    fecha_solicitud date,
    estado varchar(40) check (estado in ('Pendiente' , 'Aprobada'))
);

create table tb_provincia (
    id_prov int primary key auto_increment,
    nombre varchar(30)
);

create table tb_distrito (
    id_dis int primary key auto_increment,
    nombre varchar(30),
    id_prov int,
    foreign key (id_prov) references tb_provincia (id_prov)
);

create table tb_localidad (
    id_loc int primary key auto_increment,
    nombre varchar(30),
    id_prov int references tb_provincia (id_prov),
    id_dis int,
    foreign key (id_dis) references tb_distrito (id_dis)
);

create table tb_calle (
    id_calle int primary key auto_increment,
    nombre varchar(30),
    id_prov int references tb_provincia (id_prov),
    id_dis int references tb_distrito (id_dis),
	id_loc int,
    foreign key (id_loc) references tb_localidad (id_loc)
);

create table tb_MensajesAlerta (
    idMensajeAlerta int auto_increment primary key,
    tituloMensajeAlerta varchar(50),
    cuerpoMensajeAlerta varchar(50),
    imagenMensajeAlerta varchar(50)
);

/*Tablas de Solicitud de Nueva Conexión*/

create table tb_valorizaciones (
    idValoriza int primary key auto_increment,
    desValoriza varchar(40),
    precioValoriza decimal
);

create table tb_tipoDoc (
    idTipoDoc int primary key auto_increment,
    desTipoDoc varchar(30)
);

create table tb_TipoPredio (
    idTipoPredio int primary key auto_increment,
    desTipoPredio varchar(100)
);

create table tb_estadoPredio (
    idEstadoPredio int primary key auto_increment,
    desEstadoPredio varchar(40)
);

create table tb_diametroConexion (
    idDiametroConexion int primary key auto_increment,
    desDiametroConexion varchar(10)
);

create table tb_EstadoSolicitudNuevaConexion (
    idEstadoSolicitudNuevaConexion int primary key auto_increment,
    desEstadoSolicitudNuevaConexion varchar(100)
);

create table tb_solicitudNuevaConexion (
    idSolicitud int primary key auto_increment,
	fechaSolicitud date,
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
    fileDocumentoIdentidad mediumblob,
    fileCartaPoder mediumblob,
    filePartidaConstancia mediumblob,
    fileMemoria mediumblob,
    fileReciboVecino mediumblob,
    filePlanoInstalaciones mediumblob,
    foreign key (idTipoDoc) references tb_tipoDoc (idTipoDoc),
    foreign key (id_calle) references tb_calle (id_calle),
    foreign key (id_localidad) references tb_localidad (id_loc),
    foreign key (id_distrito) references tb_distrito (id_dis),
    foreign key (id_provincia) references tb_provincia (id_prov),
    foreign key (idEstadoPredio) references tb_estadoPredio (idEstadoPredio),
    foreign key (idTipoPredio) references tb_TipoPredio (idTipoPredio),
    foreign key (idDiametroConexion) references tb_diametroConexion (idDiametroConexion),
    foreign key (idEstadoSolicitudNuevaConexion) references tb_EstadoSolicitudNuevaConexion (idEstadoSolicitudNuevaConexion)
);

create table tb_Categoria (
    idCategoria int primary key auto_increment,
    desCategoria varchar(100)
);





/* Tablas de cambio de categoria*/

create table tb_Predio (
    idPredio int primary key auto_increment,
    idTipoPredio int,
    idEstadoPredio int,
	id_provincia int,
    id_distrito int,
    id_localidad int,
    id_calle int,
    numPredio varchar(200),
    CoordenadasPredio varchar(100),

	foreign key (id_calle) references tb_calle (id_calle),
    foreign key (id_localidad) references tb_localidad (id_loc),
    foreign key (id_distrito) references tb_distrito (id_dis),
    foreign key (id_provincia) references tb_provincia (id_prov),
    foreign key (idEstadoPredio) references tb_estadoPredio (idEstadoPredio),
    foreign key (idTipoPredio) references tb_TipoPredio (idTipoPredio)
);




/*       */
create table tb_tipo_cliente (
    idtipoCliente int primary key auto_increment,
    destipoCliente varchar(200)
);



create table tb_cliente (
    idCliente int auto_increment primary key comment 'indica el codigo autogenerado del cliente, sea natural o juridica',
    idtipoCliente int,
    numDocCliente varchar(12) unique comment 'indica el numero de documento del cliente DNI natural, RUC en caso juridica, UNICO',
    nomCliente varchar(100) comment 'indica el nombre del cliente, en caso juridica es la razon social',
    apepaCliente varchar(100) default 'No aplica' comment 'indica el apellido paterno del cliente, en caso juridica, no aplica',
    apemaCliente varchar(100) default 'No aplica' comment 'indice el apellido materno, juridica no aplica',
    mailCliente varchar(200) comment 'indica el correo del cliente',
    telefonoCliente varchar(100) comment 'indica el numero de telefono fijo del cliente',
    celularCliente varchar(100) comment 'indica el numero movil del cliente',
    urlCliente varchar(300) default 'No aplica' comment 'indica la direccion web del cliente juridico',
    tipoDocRepresentante int references tb_tipoDoc (idTipoDoc),
    numDocRepresentante varchar(100) comment 'indica el numero de documento del representante en juridica, en natural es el mismo de numdoccliente',
    nomRepresentante varchar(100) comment 'indica el nombre del representante en juridica, en natural es el mismo de nomCliente',
    apepaRepresentante varchar(100) comment 'indica apellido paterno representante , idem',
    apemaRepresentante varchar(100) comment 'indica apellido materno representante, idem',

	foreign key (idtipoCliente) references tb_tipo_cliente (idtipoCliente)
);

create table tb_Contrato (
    idContrato int primary key auto_increment,
	idCliente int references tb_cliente,
	codSuministro varchar(10) comment 'Formado por idcliente+idpredio Ejemplo 1-1',	
	idPredio int references tb_predio,
	idCategoria int references tb_categoria,
	idUsuario int references tb_usuario,
	idSolicitud int references tb_solicitudNuevaConexion,
	idDiametroConexion int references tb_diametroConexion,
    foreign key (idCategoria) references tb_Categoria (idCategoria),
    foreign key (idUsuario) references tb_usuario (idUsuario)
	/*foreign key (idSolicitud) references tb_solicitudnuevaconexion (idSolicitud)*/
);

create table tb_EstadoSolicitudCambio (
    idEstado int primary key auto_increment,
    desEstado varchar(100)
);

create table tb_SolCambioCategoria (
    idSolCategoria int primary key auto_increment,
    idContrato int,
    idEstado int references tb_EstadoSolicitudCambio,
    dniSolicitud varchar(250),
    archivo1 varchar(250),
    fechaSolicitud datetime,

	foreign key (idContrato) references tb_contrato (idContrato)
);

create table tb_DetalleSolicitudCambioCat (
    idSolCategoria int references tb_SolCambioCategoria,
    idEstado int references tb_EstadoSolicitudCambio,
    idUsuario int references tb_usuario,
    fechaDetalle datetime,

	foreign key (idUsuario) references tb_usuario (idUsuario),
    foreign key (idSolCategoria) references tb_solcambiocategoria (idSolCategoria),
    foreign key (idEstado) references tb_estadosolicitudcambio (idEstado)
);

