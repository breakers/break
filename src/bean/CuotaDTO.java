package bean;

public class CuotaDTO {
	// datos de la propia tabla
	private int idCuota;
	private String razonCuota;
	private double montoCuota;
	private String fechaEmision;
	private String fechaVencimiento;
	private int idUsuario;
	private int idCliente;
	private int idEstadoCuota;

	// datos relacionados a otras tablas
	private String desEstadoCuota;
	private String nomCliente;
	private String nomUsuario;

	public CuotaDTO(int idCuota, String razonCuota, double montoCuota,
			String fechaEmision, String fechaVencimiento, int idUsuario,
			int idCliente, int idEstadoCuota) {
		this.idCliente = idCuota;
		this.razonCuota = razonCuota;
		this.montoCuota = montoCuota;
		this.fechaEmision = fechaEmision;
		this.fechaVencimiento = fechaVencimiento;
		this.idUsuario = idUsuario;
		this.idCliente = idCliente;
		this.idEstadoCuota = idEstadoCuota;
	}

	public int getIdCuota() {
		return idCuota;
	}

	public void setIdCuota(int idCuota) {
		this.idCuota = idCuota;
	}

	public String getRazonCuota() {
		return razonCuota;
	}

	public void setRazonCuota(String razonCuota) {
		this.razonCuota = razonCuota;
	}

	public double getMontoCuota() {
		return montoCuota;
	}

	public void setMontoCuota(double montoCuota) {
		this.montoCuota = montoCuota;
	}

	public String getFechaEmision() {
		return fechaEmision;
	}

	public void setFechaEmision(String fechaEmision) {
		this.fechaEmision = fechaEmision;
	}

	public String getFechaVencimiento() {
		return fechaVencimiento;
	}

	public void setFechaVencimiento(String fechaVencimiento) {
		this.fechaVencimiento = fechaVencimiento;
	}

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public int getIdEstadoCuota() {
		return idEstadoCuota;
	}

	public void setIdEstadoCuota(int idEstadoCuota) {
		this.idEstadoCuota = idEstadoCuota;
	}

	public String getDesEstadoCuota() {
		return desEstadoCuota;
	}

	public void setDesEstadoCuota(String desEstadoCuota) {
		this.desEstadoCuota = desEstadoCuota;
	}

	public String getNomCliente() {
		return nomCliente;
	}

	public void setNomCliente(String nomCliente) {
		this.nomCliente = nomCliente;
	}

	public String getNomUsuario() {
		return nomUsuario;
	}

	public void setNomUsuario(String nomUsuario) {
		this.nomUsuario = nomUsuario;
	}

}
