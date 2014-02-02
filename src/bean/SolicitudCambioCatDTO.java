package bean;

import java.util.ArrayList;

public class SolicitudCambioCatDTO {
	
	private int idSolCategoria;
	private int idSuministro;
    private int idEstado;
    private String imgDNI;
    private String imgArchivo;
    private int idUsuario;
    private String fechaSolicitud;
	
	//datos adicionales
	private ArrayList<DetalleSolCambioCatDTO> detalles = new ArrayList<>();
	private String nomEstado;
	private String nomUsuario;
	private String codSuministro;

	public SolicitudCambioCatDTO() {
	}

	public int getIdSolCategoria() {
		return idSolCategoria;
	}

	public void setIdSolCategoria(int idSolCategoria) {
		this.idSolCategoria = idSolCategoria;
	}

	public int getIdSuministro() {
		return idSuministro;
	}

	public void setIdSuministro(int idSuministro) {
		this.idSuministro = idSuministro;
	}

	public int getIdEstado() {
		return idEstado;
	}

	public void setIdEstado(int idEstado) {
		this.idEstado = idEstado;
	}

	public String getImgDNI() {
		return imgDNI;
	}

	public void setImgDNI(String imgDNI) {
		this.imgDNI = imgDNI;
	}

	public String getImgArchivo() {
		return imgArchivo;
	}

	public void setImgArchivo(String imgArchivo) {
		this.imgArchivo = imgArchivo;
	}

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getFechaSolicitud() {
		return fechaSolicitud;
	}

	public void setFechaSolicitud(String fechaSolicitud) {
		this.fechaSolicitud = fechaSolicitud;
	}

	public ArrayList<DetalleSolCambioCatDTO> getDetalles() {
		return detalles;
	}

	public void setDetalles(ArrayList<DetalleSolCambioCatDTO> detalles) {
		this.detalles = detalles;
	}

	public String getNomEstado() {
		return nomEstado;
	}

	public void setNomEstado(String nomEstado) {
		this.nomEstado = nomEstado;
	}

	public String getNomUsuario() {
		return nomUsuario;
	}

	public void setNomUsuario(String nomUsuario) {
		this.nomUsuario = nomUsuario;
	}

	public String getCodSuministro() {
		return codSuministro;
	}

	public void setCodSuministro(String codSuministro) {
		this.codSuministro = codSuministro;
	}
	
	
	
	
}
