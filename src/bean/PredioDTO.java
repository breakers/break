package bean;

public class PredioDTO {
	
	//datos propias de la tabla
    private int idPredio;
    private int idTipoPredio;
    private int idEstadoPredio;
    private int id_provincia;
    private int id_distrito;
    private int id_localidad;
    private int id_calle;
    private String numPredio;
    private String CoordenadasPredio;
    
  //datos relacionados a otras tablas
    private String nomTipoPredio;
    private String nomEstadoPredio;
    private String nomProvincia;
    private String nomDistrito;
    private String nomLocalidad;
    private String nomCalle;
    
    private String desEstadoPredio;
    private String desTipoPredio;
    private String desSuministro;
    private String desCategoria;
    
    
    private String direccion;
    
    private DiametroConexionDTO diametro = new DiametroConexionDTO();
    
    private ContratoDTO contrato = new ContratoDTO();
    
    public PredioDTO() {
    	
	}

	public int getIdPredio() {
		return idPredio;
	}

	public void setIdPredio(int idPredio) {
		this.idPredio = idPredio;
	}

	public int getIdTipoPredio() {
		return idTipoPredio;
	}

	public void setIdTipoPredio(int idTipoPredio) {
		this.idTipoPredio = idTipoPredio;
	}

	public int getIdEstadoPredio() {
		return idEstadoPredio;
	}

	public void setIdEstadoPredio(int idEstadoPredio) {
		this.idEstadoPredio = idEstadoPredio;
	}

	public int getId_provincia() {
		return id_provincia;
	}

	public void setId_provincia(int id_provincia) {
		this.id_provincia = id_provincia;
	}

	public int getId_distrito() {
		return id_distrito;
	}

	public void setId_distrito(int id_distrito) {
		this.id_distrito = id_distrito;
	}

	public int getId_localidad() {
		return id_localidad;
	}

	public void setId_localidad(int id_localidad) {
		this.id_localidad = id_localidad;
	}

	public int getId_calle() {
		return id_calle;
	}

	public void setId_calle(int id_calle) {
		this.id_calle = id_calle;
	}

	public String getNumPredio() {
		return numPredio;
	}

	public void setNumPredio(String numPredio) {
		this.numPredio = numPredio;
	}

	public String getCoordenadasPredio() {
		return CoordenadasPredio;
	}

	public void setCoordenadasPredio(String coordenadasPredio) {
		CoordenadasPredio = coordenadasPredio;
	}

	public String getNomTipoPredio() {
		return nomTipoPredio;
	}

	public void setNomTipoPredio(String nomTipoPredio) {
		this.nomTipoPredio = nomTipoPredio;
	}

	public String getNomEstadoPredio() {
		return nomEstadoPredio;
	}

	public void setNomEstadoPredio(String nomEstadoPredio) {
		this.nomEstadoPredio = nomEstadoPredio;
	}

	public String getNomProvincia() {
		return nomProvincia;
	}

	public void setNomProvincia(String nomProvincia) {
		this.nomProvincia = nomProvincia;
	}

	public String getNomDistrito() {
		return nomDistrito;
	}

	public void setNomDistrito(String nomDistrito) {
		this.nomDistrito = nomDistrito;
	}

	public String getNomLocalidad() {
		return nomLocalidad;
	}

	public void setNomLocalidad(String nomLocalidad) {
		this.nomLocalidad = nomLocalidad;
	}

	public String getNomCalle() {
		return nomCalle;
	}

	public void setNomCalle(String nomCalle) {
		this.nomCalle = nomCalle;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getDesEstadoPredio() {
		return desEstadoPredio;
	}

	public void setDesEstadoPredio(String desEstadoPredio) {
		this.desEstadoPredio = desEstadoPredio;
	}

	public String getDesTipoPredio() {
		return desTipoPredio;
	}

	public void setDesTipoPredio(String desTipoPredio) {
		this.desTipoPredio = desTipoPredio;
	}

	public String getDesSuministro() {
		return desSuministro;
	}

	public void setDesSuministro(String desSuministro) {
		this.desSuministro = desSuministro;
	}

	public String getDesCategoria() {
		return desCategoria;
	}

	public void setDesCategoria(String desCategoria) {
		this.desCategoria = desCategoria;
	}

	public DiametroConexionDTO getDiametro() {
		return diametro;
	}

	public void setDiametro(DiametroConexionDTO diametro) {
		this.diametro = diametro;
	}

	public ContratoDTO getContrato() {
		return contrato;
	}

	public void setContrato(ContratoDTO contrato) {
		this.contrato = contrato;
	}
    
    
    
    
    

}
