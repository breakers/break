package interfaces;

import bean.SuministroDTO;

public interface SuministroDAO {
	
	public SuministroDTO obtenerSuministro(int idSuministro);
	
	public void modificarSuministro(SuministroDTO suministro);
	
	

}
