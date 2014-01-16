package interfaces;

import java.util.ArrayList;

import bean.UbigeoDTO;

public interface NuevaConexionDAO {
	
	public ArrayList<UbigeoDTO> listarProvincias();

	public ArrayList<UbigeoDTO> listarDistritos(String cod_prov);

	public ArrayList<UbigeoDTO> listarLocalidades(String cod_dis);

	public ArrayList<UbigeoDTO> listarCalles(String cod_calle);
	
}
