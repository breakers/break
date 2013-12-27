package bean;

public class Con_SolicitudDTO {

	private int numero;
	private String nombre;
	private String fecha;
	private String estado;
	
	
	public Con_SolicitudDTO(int numero, String nombre, String fecha,
			String estado) {
		this.numero = numero;
		this.nombre = nombre;
		this.fecha = fecha;
		this.estado = estado;
	}


	public int getNumero() {
		return numero;
	}


	public void setNumero(int numero) {
		this.numero = numero;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getFecha() {
		return fecha;
	}


	public void setFecha(String fecha) {
		this.fecha = fecha;
	}


	public String getEstado() {
		return estado;
	}


	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	
}
