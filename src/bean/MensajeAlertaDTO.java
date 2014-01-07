package bean;

import java.io.Serializable;

public class MensajeAlertaDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int idMensajeAlerta;
	private String tituloMensajeAlerta;
	private String cuerpoMensajeAlerta;
	private String imagenMensajeAlerta;
	
	
	
	public int getIdMensajeAlerta() {
		return idMensajeAlerta;
	}
	public void setIdMensajeAlerta(int idMensajeAlerta) {
		this.idMensajeAlerta = idMensajeAlerta;
	}
	public String getTituloMensajeAlerta() {
		return tituloMensajeAlerta;
	}
	public void setTituloMensajeAlerta(String tituloMensajeAlerta) {
		this.tituloMensajeAlerta = tituloMensajeAlerta;
	}
	public String getCuerpoMensajeAlerta() {
		return cuerpoMensajeAlerta;
	}
	public void setCuerpoMensajeAlerta(String cuerpoMensajeAlerta) {
		this.cuerpoMensajeAlerta = cuerpoMensajeAlerta;
	}
	public String getImagenMensajeAlerta() {
		return imagenMensajeAlerta;
	}
	public void setImagenMensajeAlerta(String imagenMensajeAlerta) {
		this.imagenMensajeAlerta = imagenMensajeAlerta;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	

}
