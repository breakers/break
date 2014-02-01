package bean;

public class SolicitudNuevaConexionDTO {

	private int idSolicitud;
	private int tipoPersona;
	private String fechaSolicitud;
    private String razonsocial = "";
    private String ruc = "";
    private String url = "";
    private String nombres;
    private String apepat;
    private String apemat;
    private int idTipoDoc;
    private String numDoc;
    private String correo;
    private String telefono;
    private String celular;
    private int id_calle;
    private String des_calle;
    private int id_localidad;
    private String des_localidad;
    private int id_distrito;
    private String des_distrito;
    private int id_provincia;
    private String des_provincia;
    private String numero;
    private String referencias = "";
    private int idEstadoPredio;
    private int idTipoPredio;
    private String area;
    private int idDiametroConexion;
    private double costo;
    private int numcuotas;
    private String coordenadas;
    private int idEstadoSolicitudNuevaConexion;
    private String desEstadoSolicitudNuevaConexion = "";
    private String fileDocumentoIdentidad;
    private String fileCartaPoder;
    private String filePartidaConstancia;
    private String fileMemoria;
    private String fileReciboVecino;
    private String filePlanoInstalaciones;
    
    
    private TipoDocIdentidadDTO tipodoc = new TipoDocIdentidadDTO();
    
    private EstadoPredioDTO estpredio = new EstadoPredioDTO();
    private TipoPredioDTO tipopredio = new TipoPredioDTO();
    private DiametroConexionDTO diamcon = new DiametroConexionDTO();
    
    
    
	public int getIdSolicitud() {
		return idSolicitud;
	}
	public void setIdSolicitud(int idSolicitud) {
		this.idSolicitud = idSolicitud;
	}
	public String getFechaSolicitud() {
		return fechaSolicitud;
	}
	public void setFechaSolicitud(String fechaSolicitud) {
		this.fechaSolicitud = fechaSolicitud;
	}
	public String getRazonsocial() {
		return razonsocial;
	}
	public void setRazonsocial(String razonsocial) {
		this.razonsocial = razonsocial;
	}
	public String getRuc() {
		return ruc;
	}
	public void setRuc(String ruc) {
		this.ruc = ruc;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public String getApepat() {
		return apepat;
	}
	public void setApepat(String apepat) {
		this.apepat = apepat;
	}
	public String getApemat() {
		return apemat;
	}
	public void setApemat(String apemat) {
		this.apemat = apemat;
	}
	public int getIdTipoDoc() {
		return idTipoDoc;
	}
	public void setIdTipoDoc(int idTipoDoc) {
		this.idTipoDoc = idTipoDoc;
	}
	
	public String getNumDoc() {
		return numDoc;
	}
	public void setNumDoc(String numDoc) {
		this.numDoc = numDoc;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public int getId_calle() {
		return id_calle;
	}
	public void setId_calle(int id_calle) {
		this.id_calle = id_calle;
	}
	public String getDes_calle() {
		return des_calle;
	}
	public void setDes_calle(String des_calle) {
		this.des_calle = des_calle;
	}
	public int getId_localidad() {
		return id_localidad;
	}
	public void setId_localidad(int id_localidad) {
		this.id_localidad = id_localidad;
	}
	public String getDes_localidad() {
		return des_localidad;
	}
	public void setDes_localidad(String des_localidad) {
		this.des_localidad = des_localidad;
	}
	public int getId_distrito() {
		return id_distrito;
	}
	public void setId_distrito(int id_distrito) {
		this.id_distrito = id_distrito;
	}
	public String getDes_distrito() {
		return des_distrito;
	}
	public void setDes_distrito(String des_distrito) {
		this.des_distrito = des_distrito;
	}
	public int getId_provincia() {
		return id_provincia;
	}
	public void setId_provincia(int id_provincia) {
		this.id_provincia = id_provincia;
	}
	public String getDes_provincia() {
		return des_provincia;
	}
	public void setDes_provincia(String des_provincia) {
		this.des_provincia = des_provincia;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getReferencias() {
		return referencias;
	}
	public void setReferencias(String referencias) {
		this.referencias = referencias;
	}
	public int getIdEstadoPredio() {
		return idEstadoPredio;
	}
	public void setIdEstadoPredio(int idEstadoPredio) {
		this.idEstadoPredio = idEstadoPredio;
	}
	
	public int getIdTipoPredio() {
		return idTipoPredio;
	}
	public void setIdTipoPredio(int idTipoPredio) {
		this.idTipoPredio = idTipoPredio;
	}
	
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public int getIdDiametroConexion() {
		return idDiametroConexion;
	}
	public void setIdDiametroConexion(int idDiametroConexion) {
		this.idDiametroConexion = idDiametroConexion;
	}
	public double getCosto() {
		return costo;
	}
	public void setCosto(double costo) {
		this.costo = costo;
	}
	public int getNumcuotas() {
		return numcuotas;
	}
	public void setNumcuotas(int numcuotas) {
		this.numcuotas = numcuotas;
	}
	public String getCoordenadas() {
		return coordenadas;
	}
	public void setCoordenadas(String coordenadas) {
		this.coordenadas = coordenadas;
	}
	public int getIdEstadoSolicitudNuevaConexion() {
		return idEstadoSolicitudNuevaConexion;
	}
	public void setIdEstadoSolicitudNuevaConexion(int idEstadoSolicitudNuevaConexion) {
		this.idEstadoSolicitudNuevaConexion = idEstadoSolicitudNuevaConexion;
	}
	public String getDesEstadoSolicitudNuevaConexion() {
		return desEstadoSolicitudNuevaConexion;
	}
	public void setDesEstadoSolicitudNuevaConexion(
			String desEstadoSolicitudNuevaConexion) {
		this.desEstadoSolicitudNuevaConexion = desEstadoSolicitudNuevaConexion;
	}
	public String getFileDocumentoIdentidad() {
		return fileDocumentoIdentidad;
	}
	public void setFileDocumentoIdentidad(String fileDocumentoIdentidad) {
		this.fileDocumentoIdentidad = fileDocumentoIdentidad;
	}
	public String getFileCartaPoder() {
		return fileCartaPoder;
	}
	public void setFileCartaPoder(String fileCartaPoder) {
		this.fileCartaPoder = fileCartaPoder;
	}
	public String getFilePartidaConstancia() {
		return filePartidaConstancia;
	}
	public void setFilePartidaConstancia(String filePartidaConstancia) {
		this.filePartidaConstancia = filePartidaConstancia;
	}
	public String getFileMemoria() {
		return fileMemoria;
	}
	public void setFileMemoria(String fileMemoria) {
		this.fileMemoria = fileMemoria;
	}
	public String getFileReciboVecino() {
		return fileReciboVecino;
	}
	public void setFileReciboVecino(String fileReciboVecino) {
		this.fileReciboVecino = fileReciboVecino;
	}
	public String getFilePlanoInstalaciones() {
		return filePlanoInstalaciones;
	}
	public void setFilePlanoInstalaciones(String filePlanoInstalaciones) {
		this.filePlanoInstalaciones = filePlanoInstalaciones;
	}
	public TipoDocIdentidadDTO getTipodoc() {
		return tipodoc;
	}
	public void setTipodoc(TipoDocIdentidadDTO tipodoc) {
		this.tipodoc = tipodoc;
	}
	public EstadoPredioDTO getEstpredio() {
		return estpredio;
	}
	public void setEstpredio(EstadoPredioDTO estpredio) {
		this.estpredio = estpredio;
	}
	public TipoPredioDTO getTipopredio() {
		return tipopredio;
	}
	public void setTipopredio(TipoPredioDTO tipopredio) {
		this.tipopredio = tipopredio;
	}
	public DiametroConexionDTO getDiamcon() {
		return diamcon;
	}
	public void setDiamcon(DiametroConexionDTO diamcon) {
		this.diamcon = diamcon;
	}
	@Override
	public String toString() {
		return "SolicitudNuevaConexionDTO [idSolicitud=" + idSolicitud
				+ ", fechaSolicitud=" + fechaSolicitud + ", razonsocial="
				+ razonsocial + ", ruc=" + ruc + ", url=" + url + ", nombres="
				+ nombres + ", apepat=" + apepat + ", apemat=" + apemat
				+ ", idTipoDoc=" + idTipoDoc + ", numDoc=" + numDoc
				+ ", correo=" + correo + ", telefono=" + telefono
				+ ", celular=" + celular + ", id_calle=" + id_calle
				+ ", des_calle=" + des_calle + ", id_localidad=" + id_localidad
				+ ", des_localidad=" + des_localidad + ", id_distrito="
				+ id_distrito + ", des_distrito=" + des_distrito
				+ ", id_provincia=" + id_provincia + ", des_provincia="
				+ des_provincia + ", numero=" + numero + ", referencias="
				+ referencias + ", idEstadoPredio=" + idEstadoPredio
				+ ", idTipoPredio=" + idTipoPredio + ", area=" + area
				+ ", idDiametroConexion=" + idDiametroConexion + ", costo="
				+ costo + ", numcuotas=" + numcuotas + ", coordenadas="
				+ coordenadas + ", idEstadoSolicitudNuevaConexion="
				+ idEstadoSolicitudNuevaConexion
				+ ", desEstadoSolicitudNuevaConexion="
				+ desEstadoSolicitudNuevaConexion + ", fileDocumentoIdentidad="
				+ fileDocumentoIdentidad + ", fileCartaPoder=" + fileCartaPoder
				+ ", filePartidaConstancia=" + filePartidaConstancia
				+ ", fileMemoria=" + fileMemoria + ", fileReciboVecino="
				+ fileReciboVecino + ", filePlanoInstalaciones="
				+ filePlanoInstalaciones + ", tipodoc=" + tipodoc
				+ ", estpredio=" + estpredio + ", tipopredio=" + tipopredio
				+ ", diamcon=" + diamcon + "]";
	}
	public int getTipoPersona() {
		return tipoPersona;
	}
	public void setTipoPersona(int tipoPersona) {
		this.tipoPersona = tipoPersona;
	}
	
	
	
	
	
    
}
