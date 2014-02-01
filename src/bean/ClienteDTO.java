package bean;

public class ClienteDTO {
	
	private int idCliente;
    private int idtipoPersona;
	private String razonsocial;
    private String rucCliente;
	private String urlCliente;
    private String nomCliente;
    private String apepaCliente;
    private String apemaCliente;
	private TipoDocIdentidadDTO tipodoc = new TipoDocIdentidadDTO();
    private String correoCliente;
    private String telefonoCliente;
    private String celularCliente;
    
    private PredioDTO predio = new PredioDTO();
    
    private ContratoDTO contrato = new ContratoDTO();
    
    
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	public int getIdtipoPersona() {
		return idtipoPersona;
	}
	public void setIdtipoPersona(int idtipoPersona) {
		this.idtipoPersona = idtipoPersona;
	}
	public String getRazonsocial() {
		return razonsocial;
	}
	public void setRazonsocial(String razonsocial) {
		this.razonsocial = razonsocial;
	}
	public String getRucCliente() {
		return rucCliente;
	}
	public void setRucCliente(String rucCliente) {
		this.rucCliente = rucCliente;
	}
	public String getUrlCliente() {
		return urlCliente;
	}
	public void setUrlCliente(String urlCliente) {
		this.urlCliente = urlCliente;
	}
	public String getNomCliente() {
		return nomCliente;
	}
	public void setNomCliente(String nomCliente) {
		this.nomCliente = nomCliente;
	}
	public String getApepaCliente() {
		return apepaCliente;
	}
	public void setApepaCliente(String apepaCliente) {
		this.apepaCliente = apepaCliente;
	}
	public String getApemaCliente() {
		return apemaCliente;
	}
	public void setApemaCliente(String apemaCliente) {
		this.apemaCliente = apemaCliente;
	}
	public TipoDocIdentidadDTO getTipodoc() {
		return tipodoc;
	}
	public void setTipodoc(TipoDocIdentidadDTO tipodoc) {
		this.tipodoc = tipodoc;
	}
	public String getCorreoCliente() {
		return correoCliente;
	}
	public void setCorreoCliente(String correoCliente) {
		this.correoCliente = correoCliente;
	}
	public String getTelefonoCliente() {
		return telefonoCliente;
	}
	public void setTelefonoCliente(String telefonoCliente) {
		this.telefonoCliente = telefonoCliente;
	}
	public String getCelularCliente() {
		return celularCliente;
	}
	public void setCelularCliente(String celularCliente) {
		this.celularCliente = celularCliente;
	}
	public PredioDTO getPredio() {
		return predio;
	}
	public void setPredio(PredioDTO predio) {
		this.predio = predio;
	}
	public ContratoDTO getContrato() {
		return contrato;
	}
	public void setContrato(ContratoDTO contrato) {
		this.contrato = contrato;
	}
	
	
}
