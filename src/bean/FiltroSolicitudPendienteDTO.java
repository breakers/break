package bean;

public class FiltroSolicitudPendienteDTO {
	private String nombreRazSocial;
	private int nroSolicitud;
	private String fechaDesde;
	private String fechaHasta;
	
	
	public String getNombreRazSocial() {
		return nombreRazSocial;
	}
	public void setNombreRazSocial(String nombreRazSocial) {
		this.nombreRazSocial = nombreRazSocial;
	}
	public int getNroSolicitud() {
		return nroSolicitud;
	}
	public void setNroSolicitud(int nroSolicitud) {
		this.nroSolicitud = nroSolicitud;
	}
	public String getFechaDesde() {
		return fechaDesde;
	}
	public void setFechaDesde(String fechaDesde) {
		this.fechaDesde = fechaDesde;
	}
	public String getFechaHasta() {
		return fechaHasta;
	}
	public void setFechaHasta(String fechaHasta) {
		this.fechaHasta = fechaHasta;
	}
	
}
