package bean;

public class SuministroDTO {
	private int idSuministro;
	private String codSuministro;
	
	
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
}
