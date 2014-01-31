package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.DiametroConexionDTO;
import bean.EstadoPredioDTO;
import bean.SolicitudNuevaConexionDTO;
import bean.TipoDocIdentidadDTO;
import bean.TipoPredioDTO;
import bean.UbigeoDTO;
import service.NuevaConexionService;

@WebServlet("/SvNuevaConexion")
public class SvNuevaConexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
    NuevaConexionService service = new NuevaConexionService();
    public SvNuevaConexion() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			cargarCombos(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String razonsocial = (String) request.getParameter("razonsocial");
		String ruc = (String) request.getParameter("ruc");
		String url = (String) request.getParameter("url");
		String nombres = (String) request.getParameter("nombres");
		String apepat = (String) request.getParameter("apepat");
		String apemat = (String) request.getParameter("apemat");
		int tipodoc = Integer.parseInt((String) request.getParameter("tipodoc"));
		String numdoc = (String) request.getParameter("numdoc");
		String correo = (String) request.getParameter("correo");
		String telefono = ((String) request.getParameter("telefono")).replaceAll("[(|)| |-]", "");
		String celular = ((String) request.getParameter("celular")).replaceAll("[(|)| |-]", "");
		int provincia = Integer.parseInt((String) request.getParameter("provincia"));
		int distrito = Integer.parseInt((String) request.getParameter("distrito"));
		int localidad = Integer.parseInt((String) request.getParameter("localidad"));
		int calle = Integer.parseInt((String) request.getParameter("calle"));
		String numero = (String) request.getParameter("numero");
		String referencias = (String) request.getParameter("referencias");
		int estado = Integer.parseInt((String) request.getParameter("estado"));
		int tipopredio = Integer.parseInt((String) request.getParameter("tipopredio"));
		String area = (String) request.getParameter("area");
		int diametro = Integer.parseInt((String) request.getParameter("diametro"));
		double costo = Double.parseDouble((String) request.getParameter("costo"));
		int numcuotas = Integer.parseInt((String) request.getParameter("numcuotas"));
		String coordenadas = ((String) request.getParameter("coordenadas")).replaceAll("[(|)| ]", "");
		String fileDocSolicitante = request.getParameter("fileDocSolicitante");
		
		SolicitudNuevaConexionDTO solicitud = new SolicitudNuevaConexionDTO();
		solicitud.setRazonsocial(razonsocial);
		solicitud.setRuc(ruc);
		solicitud.setUrl(url);
		solicitud.setNombres(nombres);
		solicitud.setApepat(apepat);
		solicitud.setApemat(apemat);
		solicitud.setIdTipoDoc(tipodoc);
		solicitud.setNumDoc(numdoc);
		solicitud.setCorreo(correo);
		solicitud.setTelefono(telefono);
		solicitud.setCelular(celular);
		solicitud.setId_calle(calle);
		solicitud.setId_localidad(localidad);
		solicitud.setId_distrito(distrito);
		solicitud.setId_provincia(provincia);
		solicitud.setNumero(numero);
		solicitud.setReferencias(referencias);
		solicitud.setIdEstadoPredio(estado);
		solicitud.setIdTipoPredio(tipopredio);
		solicitud.setArea(area);
		solicitud.setIdDiametroConexion(diametro);
		solicitud.setCosto(costo);
		solicitud.setNumcuotas(numcuotas);
		solicitud.setCoordenadas(coordenadas);
		solicitud.setFileDocumentoIdentidad(fileDocSolicitante);
		
		 response.setContentType("text/plain");
	        PrintWriter out = response.getWriter();
	        
		if(service.registrarSolicitudNuevaConexion(solicitud)){
			out.println("Gracias, " + nombres + " Tu solicitud se ha enviado correctamente.");
		}else{
			out.println("Lo sentimos, " + nombres + " Tu solicitud no se ha podido enviar, inténtalo nuevamente.");
		}
		
		
	}
	
	public void cargarCombos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<UbigeoDTO> provincias = service.listarProvincias();
		List<EstadoPredioDTO> estados = service.listarEstadosPredio();
		List<TipoPredioDTO> tiposPredio = service.listarTiposPredio();
		List<DiametroConexionDTO> diametros = service.listarDiametrosConexion();
		List<TipoDocIdentidadDTO> tiposDoc = service.listarTiposDoc();
		RequestDispatcher rd = request.getRequestDispatcher("/nuevaconexion.jsp");
		
		if(provincias != null && estados != null && tiposPredio != null && diametros != null && tiposDoc != null){
			request.setAttribute("provincias", provincias);
			request.setAttribute("estados", estados);
			request.setAttribute("tiposPredio", tiposPredio);
			request.setAttribute("diametros", diametros);
			request.setAttribute("tiposDoc", tiposDoc);
		}
		
		rd.forward(request, response);
	}

}
