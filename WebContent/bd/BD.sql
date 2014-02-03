DROP DATABASE IF EXISTS `DB_Sedapar` ; 
create database DB_Sedapar;
use DB_Sedapar;


/*Tablas Generales*/

create table tb_tipo_persona (
    idtipoPersona int primary key auto_increment,
    destipoPersona varchar(200)
);

create table tb_perfil (
    idPerfil int primary key auto_increment comment 'indica el codigo autogenerado del tipo de perfil',
    desPerfil varchar(50) comment 'indica el nombre del perfil',
    moduloContratos tinyint comment 'indica si el modulo Contratos esta activo (no/0,si/1)',
    moduloCategorias tinyint comment 'indica si el modulo Categorias esta activo (no/0,si/1)',
    moduloLiquidacion tinyint comment 'indica si el modulo Liquidación esta activo (no/0,si/1)',
    moduloReportes tinyint comment 'indica si el modulo Reportes esta activo (no/0,si/1)',
    moduloManClientes tinyint comment 'indica si el modulo Mant. CLientesesta activo (no/0,si/1)',
    moduloManPerfiles tinyint comment 'indica si el modulo Mant. CLientes activo (no/0,si/1)',
    moduloManUsuarios tinyint comment 'indica si el modulo Mant. usuarios esta activo (no/0,si/1)',
    moduloBuzon tinyint comment 'indica si el bUSON esta activo (no/0,si/1)',
    moduloCalendario tinyint comment 'indica si el calendario esta activo (no/0,si/1)'
);

create table tb_usuario (
    idUsuario int primary key auto_increment comment 'indica el codigo autogenerado del usuario',
    idPerfil int comment 'referencia el tipo de perfil',
    userUsuario varchar(10) comment 'indica usuaro para el login',
    passUsuario varchar(10) comment 'indica password para el login',
    nomUsuario varchar(30) comment 'indica nombre del usuario',
    apepaUsuario varchar(30) comment 'indica pellido paterno del usuario',
    apemaUsuario varchar(30) comment 'indica apellido materno del usuario',
    dniUsuario varchar(10) comment 'indica DNI del usuario',
    correoUsuario varchar(30) comment 'indica correo electronico del usuario',
    telefonoUsuario char(9) comment 'indica telefono del usuario',
    foreign key (idPerfil)
        references tb_perfil (idPerfil)
);

create table tb_provincia (
    id_prov int primary key auto_increment comment 'indica el id de provincia (autogenerado)',
    nombre varchar(30) comment 'indica el nombre de la provincia'
);

create table tb_distrito (
    id_dis int primary key auto_increment comment 'indica el id de distrito (autogenerado)',
    nombre varchar(30) comment 'indica el nombre del distrito',
    id_prov int comment 'referencia tb_provincia',
    foreign key (id_prov) references tb_provincia (id_prov)
);

create table tb_localidad (
    id_loc int primary key auto_increment comment 'indica el id de localidad(autogenerado)',
    nombre varchar(30) comment 'indica el nombre de la localidad',
    id_prov int references tb_provincia (id_prov) ,
    id_dis int comment 'referencia tb_distrito',
    foreign key (id_dis) references tb_distrito (id_dis)
);

create table tb_calle (
    id_calle int primary key auto_increment comment 'indica el id de calle(autogenerado)',
    nombre varchar(30) comment 'indica el nombre de la calle',
    id_prov int references tb_provincia (id_prov) ,
    id_dis int references tb_distrito (id_dis),
	id_loc int comment 'referencia tb_localidad',
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
    idValoriza int primary key auto_increment  comment 'indica el id de valorización',
    desValoriza varchar(40)  comment 'indica el campo a valorizar',
    precioValoriza decimal  comment 'indica el precio de la valorización'
);

create table tb_tipoDoc (
    idTipoDoc int primary key auto_increment  comment 'indica el id del tipo de documento',
    desTipoDoc varchar(30)  comment 'indica el tipo de documento'
);

create table tb_TipoPredio (
    idTipoPredio int primary key auto_increment  comment 'indica el id de tipo de predio',
    desTipoPredio varchar(100)  comment 'indica el nombre del tipo de predio'
);

create table tb_estadoPredio (
    idEstadoPredio int primary key auto_increment  comment 'indica el id del estado del predio',
    desEstadoPredio varchar(40)  comment 'indica la descriocion del estado de predio'
);

create table tb_diametroConexion (
    idDiametroConexion int primary key auto_increment  comment 'indica el id del diametro de la conexion',
    desDiametroConexion varchar(10)  comment 'indica el diametro de conexion'
);

create table tb_EstadoSolicitudNuevaConexion (
    idEstadoSolicitudNuevaConexion int primary key auto_increment  comment 'indica el id del estado del estado de la solicitud nueva conexión',
    desEstadoSolicitudNuevaConexion varchar(100)  comment 'indica el estadi de la solicitud de neuva conexión'
);

create table tb_solicitudNuevaConexion (
    idSolicitud int primary key auto_increment  comment 'indica el id autogenerado de nueva conexión',
	fechaSolicitud date  comment 'indica la fecha de la solicitud',
	tipoPersona int,
    razonsocial varchar(50)  comment 'indica la razón social (si es persona jurídica)',
    ruc varchar(11)  comment 'indica el ruc (si es persona jurídica)',
    url varchar(50)  comment 'indica el url de su web(si es persona jurídica)',
    nombres varchar(50) not null  comment 'indica el nombre del solicitante(o representante legal)',
    apepat varchar(50) not null comment 'indica el apellido paterno del solicitante(o representante legal)',
    apemat varchar(50) not null comment 'indica el apellido materno del solicitante(o representante legal)',
    idTipoDoc int not null comment 'indica el tipo de documento del solicitante(o representante legal)',
    numDoc varchar(30) not null comment 'indica el numero de documento del solicitante(o representante legal)',
    correo varchar(50) not null comment 'indica el correo de contacto del solicitante',
    telefono varchar(9) comment 'indica el telefono de contacto del solicitante',
    celular varchar(11) comment 'indica el celular de contacto del solicitante',
    id_calle int comment 'referencia la calle del predio de la solicitud',
    id_localidad int comment 'referencia la localidad del predio de la solicitud',
    id_distrito int comment 'referencia el distrito del predio de la solicitud',
    id_provincia int comment 'referencia la provincia del predio de la solicitud',
    numero varchar(10)  comment 'indica el numero del predio de la solicitud',
    referencias varchar(200)  comment 'indica referencias de ubicacion del predio de la solicitud',
    idEstadoPredio int comment 'referencia del predio de la solicitud',
    idTipoPredio int  comment 'referencia el tipo de predio de la solicitud',
    area varchar(10)  comment 'indica el area del predio de la solicitud',
    idDiametroConexion int  comment 'referencia el diametro del predio de la solicitud',
    costo decimal comment 'indica el costo generado de la solicitud',
    numcuotas int  comment 'indica el número de cuotas a pagar la solicitud',
    coordenadas varchar(40) comment 'indica las coordenadas del predio de la solicitud',
    idEstadoSolicitudNuevaConexion int comment 'referencia el estado de la solicitud',
    fileDocumentoIdentidad mediumblob  comment 'almacena el pdf del documento de identidad',
    fileCartaPoder mediumblob comment 'almacena el pdf de la carta poder',
    filePartidaConstancia mediumblob comment 'almacena el pdf del documento de identidad',
    fileMemoria mediumblob comment 'almacena el pdf de la memoria descriptiva',
    fileReciboVecino mediumblob comment 'almacena el pdf del recibo del vecino',
    filePlanoInstalaciones mediumblob comment 'almacena el pdf del plano del predio',
	foreign key (tipoPersona) references tb_tipo_persona (idtipoPersona),
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

create table tb_DetalleSolicitudNuevaCon (
    idSolNuevaCon int references tb_solicitudNuevaConexion,
    idEstado int references tb_EstadoSolicitudNuevaConexion,
    idUsuario int references tb_usuario,
    fechaDetalle datetime,

	foreign key (idUsuario) references tb_usuario (idUsuario),
    foreign key (idSolNuevaCon) references tb_solicitudNuevaConexion (idSolicitud),
    foreign key (idEstado) references tb_EstadoSolicitudNuevaConexion (idEstadoSolicitudNuevaConexion)
);

/* Tablas Generadas al realizar el contrato*/

create table tb_Categoria (
    idCategoria int primary key auto_increment comment 'indica el id autogenerado de la categoria',
    desCategoria varchar(100) comment 'indica el id autogenerado de la categoria'
);

create table tb_Predio (
    idPredio int primary key auto_increment comment 'indica el id del predio',
    idTipoPredio int comment 'referemcia al tipo de predio',
    idEstadoPredio int comment 'referencia al estado del predio',
	id_provincia int comment 'referencia la provincia del predio',
    id_distrito int comment 'referencia la localidad del distrito',
    id_localidad int comment 'referencia la localidad del predio',
    id_calle int comment 'referencia la calle del predio',
    numPredio varchar(200) comment 'indica el numero del predio',
	referencias varchar(200),
    CoordenadasPredio varchar(100) comment 'indica las coordenadas del predio',

	foreign key (id_calle) references tb_calle (id_calle),
    foreign key (id_localidad) references tb_localidad (id_loc),
    foreign key (id_distrito) references tb_distrito (id_dis),
    foreign key (id_provincia) references tb_provincia (id_prov),
    foreign key (idEstadoPredio) references tb_estadoPredio (idEstadoPredio),
    foreign key (idTipoPredio) references tb_TipoPredio (idTipoPredio)
);


create table tb_cliente (
    idCliente int auto_increment primary key comment 'indica el codigo autogenerado del cliente, sea natural o juridica',
    idtipoPersona int,
	razonsocial varchar(50)  comment 'indica la razón social (si es persona jurídica)',
    rucCliente varchar(11)  comment 'indica el ruc (si es persona jurídica)',
	urlCliente varchar(50) default 'No aplica' comment 'indica la direccion web del cliente juridico',
    nomCliente varchar(50) comment 'indica el nombre del cliente',
    apepaCliente varchar(50) default 'No aplica' comment 'indica el apellido paterno del cliente',
    apemaCliente varchar(50) default 'No aplica' comment 'indice el apellido materno',
	idTipoDoc int not null comment 'indica el tipo de documento del solicitante(o representante legal)',
    numDocCliente varchar(30) unique comment 'indica el numero de documento de identidad',
	fileDocCliente mediumblob comment 'Es el archivo del documento de identidad del cliente',
    correoCliente varchar(50) comment 'indica el correo del cliente',
    telefonoCliente varchar(9) comment 'indica el numero de telefono fijo del cliente',
    celularCliente varchar(11) comment 'indica el numero movil del cliente',
	foreign key (idtipoPersona) references tb_tipo_persona (idtipoPersona)
);

create table tb_Suministro (
	idSuministro int primary key auto_increment,
	codSuministro varchar(10) not null unique,
	idCliente int not null,
	idPredio int not null,
	idCategoria int,
	idDiametroConexion int ,
	foreign key (idCategoria) references tb_Categoria (idCategoria),
	foreign key (idCliente) references tb_cliente(idCliente),
	foreign key (idPredio) references tb_predio(idPredio),
	foreign key (idDiametroConexion) references tb_diametroconexion(idDiametroConexion)
);

create table tb_Contrato (
    idContrato int primary key auto_increment comment 'id autogenerado del contrato',
	idCliente int comment 'Referencia al cliente',
	idPredio int,
	idSuministro int,	
	idUsuario int,
	idSolicitud int,
	idDiametroConexion int ,
	costo double,
	foreign key (idCliente) references tb_cliente(idCliente),
	foreign key (idPredio) references tb_predio(idPredio),
	foreign key (idSuministro) references tb_Suministro(idSuministro),
    foreign key (idUsuario) references tb_usuario (idUsuario),
	foreign key (idSolicitud) references tb_solicitudnuevaconexion(idSolicitud),
	foreign key (idDiametroConexion) references tb_diametroconexion(idDiametroConexion)
	
	
	/*foreign key (idSolicitud) references tb_solicitudnuevaconexion (idSolicitud)*/
);

create table tb_EstadoCuota(
	idEstadoCuota int primary key auto_increment,
	desEstadoCuota varchar(20)
);

create table tb_Cuota(
	idCuota int primary key auto_increment,
	motivoCuota varchar(50),
	montoCuota decimal(5,2),
	fechaEmision date,
	fechaVencimiento date,
	idUsuario int references tb_usuario,
	idCliente int references tb_cliente,
	idEstadoCuota int references tb_estadocuta,

	foreign key (idCliente) references tb_cliente (idCliente),
	foreign key (idEstadoCuota) references tb_EstadoCuota (idEstadoCuota)
);

create table tb_Boleta(
	idBoleta int primary key auto_increment,
	montoPagado decimal(5,2),
	idUsuario int references tb_usuario,
	idCliente int references tb_cliente
);



/* Tablas de cambio de categoria*/

create table tb_EstadoSolicitudCambio (
    idEstado int primary key auto_increment comment 'Indica id auto generado de estado de cambio de categoria',
    desEstado varchar(100) comment 'indica la descripción del estado de la solicitud de cambio de categoria'
);

CREATE table tb_SolCambioCategoria (
    idSolCategoria int primary key auto_increment comment 'Indica el id autogenerado de la solicitud de cambio de categoria',
    idSuministro int comment 'Referencia al contrto al que se le desea cambair la categoria',
    idEstado int references tb_EstadoSolicitudCambio,
    imgDNI mediumblob comment 'Indica el DNI del solicitante',
    imgArchivo mediumblob comment 'Indica la ubicaiÃ³n de la imagen guarda',
	idUsuario int references tb_usuario,
    fechaSolicitud datetime comment 'Indica al fecha de la creaciÃ³n de la solicitud',
	razoncambio varchar(255),

	foreign key (idSuministro) references tb_suministro (idSuministro)
);

CREATE table tb_DetalleSolicitudCambioCat (
    idSolCategoria int references tb_SolCambioCategoria,
    idEstado int references tb_EstadoSolicitudCambio,
    idUsuario int references tb_usuario,
    fechaDetalle datetime,

	foreign key (idUsuario) references tb_usuario (idUsuario),
    foreign key (idSolCategoria) references tb_solcambiocategoria (idSolCategoria),
    foreign key (idEstado) references tb_estadosolicitudcambio (idEstado)
);

