package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.PerfilService;
import bean.PerfilDTO;


/**
 * Servlet implementation class SvPerfiles
 */
@WebServlet("/SvPerfiles")
public class SvPerfiles extends ServletParent {
	private static final long serialVersionUID = 1L;
       PerfilService service = new PerfilService();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SvPerfiles() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listarPerfiles(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Llego al Servlet SvPerfiles metodo Post");
		
		if(((String)request.getParameter("boton")).equals("Agregar")){
			System.out.println("Entro al método registrar perfil");
			registrarPerfiles(request, response);
		}else if(((String)request.getParameter("boton")).equals("Actualizar")){
			System.out.println("Entro al método actualizar perfil");
			actualizarPerfiles(request, response);
		}else if(((String)request.getParameter("boton")).equals("Eliminar")){
			System.out.println("Entro al método eliminar perfil");
			eliminarPerfiles(request, response);
		}
		
		
	}
	
		public void listarPerfiles(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			List<PerfilDTO> lista = service.listarPerfiles();
			int ultimoid= service.ultimoPerfil();
			
			if(lista!=null){
			RequestDispatcher rd = request.getRequestDispatcher("/man_perfiles.jsp");
			request.setAttribute("listaPerfiles", lista);
			request.setAttribute("ultimoid", ultimoid);
			rd.forward(request, response);
			
			
					}
		}
		
		public void registrarPerfiles(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			
				System.out.println("btnAgregar si existe entonces procede a recibir todos los datos");
				String descripcion = (String) request.getParameter("txtDescripcion");
				
				int moduloContratos;
				int moduloCategorias;
				int moduloLiquidacion;
				int moduloReportes;
				int moduloManClientes;
				int moduloManPerfiles;
				int moduloManUsuarios;
				int moduloBuzon;
				int moduloCalendario;
				
				if(((String) request.getParameter("chkModContratos"))!=null)	moduloContratos=1;
				else	moduloContratos=0;
				if(((String) request.getParameter("chkModCategorias"))!=null)	moduloCategorias=1;
				else	moduloCategorias=0;
				if(((String) request.getParameter("chkModLiquidacion"))!=null) moduloLiquidacion=1;
				else	moduloLiquidacion=0;
				if(((String) request.getParameter("chkModReportes"))!=null) moduloReportes=1;
				else	moduloReportes=0;
				if(((String) request.getParameter("chkModManClientes"))!=null) moduloManClientes=1;
				else	moduloManClientes=0;
				if(((String) request.getParameter("chkModManPerfiles"))!=null) moduloManPerfiles=1;
				else	moduloManPerfiles=0;
				if(((String) request.getParameter("chkModLiquidacion"))!=null) moduloManUsuarios=1;
				else	moduloManUsuarios=0;
				if(((String) request.getParameter("chkModBuzon"))!=null) moduloBuzon=1;
				else	moduloBuzon=0;
				if(((String) request.getParameter("chkModCalendario"))!=null) moduloCalendario=1;
				else	moduloCalendario=0;
				
				PerfilDTO perfil = new PerfilDTO(0,descripcion,moduloContratos,moduloCategorias,moduloLiquidacion,moduloReportes,moduloManClientes,moduloManPerfiles,moduloManUsuarios,moduloBuzon,moduloCalendario);
				
				
				
				service.registrarPerfil(perfil);
				
				
				request.getSession().setAttribute("evento", 1);
				request.getSession().setAttribute("mensaje", obtenerMensaje(request,1,"Perfil"));
				listarPerfiles(request, response);
			
		}
		
		public void actualizarPerfiles(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			int id = Integer.parseInt(request.getParameter("txtID_act"));
			String descripcion = (String) request.getParameter("txtDescripcion_act");
			
			int moduloContratos;
			int moduloCategorias;
			int moduloLiquidacion;
			int moduloReportes;
			int moduloManClientes;
			int moduloManPerfiles;
			int moduloManUsuarios;
			int moduloBuzon;
			int moduloCalendario;
			
			if(((String) request.getParameter("chkModContratos_act"))!=null)	moduloContratos=1;
			else	moduloContratos=0;
			if(((String) request.getParameter("chkModCategorias_act"))!=null)	moduloCategorias=1;
			else	moduloCategorias=0;
			if(((String) request.getParameter("chkModLiquidacion_act"))!=null) moduloLiquidacion=1;
			else	moduloLiquidacion=0;
			if(((String) request.getParameter("chkModReportes_act"))!=null) moduloReportes=1;
			else	moduloReportes=0;
			if(((String) request.getParameter("chkModManClientes_act"))!=null) moduloManClientes=1;
			else	moduloManClientes=0;
			if(((String) request.getParameter("chkModManPerfiles_act"))!=null) moduloManPerfiles=1;
			else	moduloManPerfiles=0;
			if(((String) request.getParameter("chkModLiquidacion_act"))!=null) moduloManUsuarios=1;
			else	moduloManUsuarios=0;
			if(((String) request.getParameter("chkModBuzon_act"))!=null) moduloBuzon=1;
			else	moduloBuzon=0;
			if(((String) request.getParameter("chkModCalendario_act"))!=null) moduloCalendario=1;
			else	moduloCalendario=0;
			
			
			System.out.println("Parametros: "+id+","+descripcion+","+moduloContratos+","+moduloCategorias+","+moduloLiquidacion+","+moduloReportes+","+moduloManClientes+","+moduloManPerfiles+","+moduloManUsuarios+","+moduloBuzon+","+moduloCalendario);
			PerfilDTO perfil = new PerfilDTO(id,descripcion,moduloContratos,moduloCategorias,moduloLiquidacion,moduloReportes,moduloManClientes,moduloManPerfiles,moduloManUsuarios,moduloBuzon,moduloCalendario);
			
			service.actualizarPerfil(perfil);
			request.getSession().setAttribute("evento", 2);
			listarPerfiles(request, response);
		}

		
		
		public void eliminarPerfiles(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			int id = Integer.parseInt(request.getParameter("txtID_eli"));
			
			System.out.println("Parametros: "+id);
			
			service.eliminarPerfil(id);
			request.getSession().setAttribute("evento", 3);
			listarPerfiles(request, response);
		}
		
}
