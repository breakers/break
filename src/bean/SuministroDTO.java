package bean;

public class SuministroDTO {
	private int idSuministro;
	private String codSuministro;
	private int idCliente;
	private int idPredio;
	private int idCategoria;
	private int idDiametroConexion;
	
	private String nomDiametroConexion;
	private String nomCategoria;
	
	
	private PredioDTO predio = new PredioDTO();
	
	public String getCodSuministro() {
		return codSuministro;
	}
	public void setCodSuministro(String codSuministro) {
		this.codSuministro = codSuministro;
	}
	public int getIdSuministro() {
		return idSuministro;
	}
	public void setIdSuministro(int idSuministro) {
		this.idSuministro = idSuministro;
	}
	public PredioDTO getPredio() {
		return predio;
	}
	public void setPredio(PredioDTO predio) {
		this.predio = predio;
	}
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	public int getIdPredio() {
		return idPredio;
	}
	public void setIdPredio(int idPredio) {
		this.idPredio = idPredio;
	}
	public int getIdCategoria() {
		return idCategoria;
	}
	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}
	public int getIdDiametroConexion() {
		return idDiametroConexion;
	}
	public void setIdDiametroConexion(int idDiametroConexion) {
		this.idDiametroConexion = idDiametroConexion;
	}
	public String getNomDiametroConexion() {
		return nomDiametroConexion;
	}
	public void setNomDiametroConexion(String nomDiametroConexion) {
		this.nomDiametroConexion = nomDiametroConexion;
	}
	public String getNomCategoria() {
		return nomCategoria;
	}
	public void setNomCategoria(String nomCategoria) {
		this.nomCategoria = nomCategoria;
	}
	
	
	
	
	
}
