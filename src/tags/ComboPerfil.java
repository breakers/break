package tags;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class ComboPerfil extends TagSupport {

	public int doStartTag() throws JspException {

		Connection con = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost/db_sedapar", "root", "mysql");
			PreparedStatement pst = con
					.prepareStatement("select idPerfil,desPerfil from tb_perfil");
			rs = pst.executeQuery();

			while (rs.next()) {
				String idPerfil = rs.getString("idPerfil");
				int desPerfil = rs.getInt("desPerfil");

				pageContext.getOut().println(
						"<option value=\"" + idPerfil + "\">" + desPerfil
								+ "</option>");

			}

		} catch (Exception e) {
			throw new JspException("Error:IOException" + e.getMessage());
		}

		return SKIP_BODY;
	}

	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}

}