package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQL {

	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//lys.no-ip.biz
			 Connection cn = 
		          DriverManager.getConnection(
		            "jdbc:mysql://localhost:3306/DB_Sedapar",
		            "root", 
		            "mysql");
			 
			 return cn;
		} catch (ClassNotFoundException e) {
			// e.printStackTrace();
		} catch (SQLException e) {
			// e.printStackTrace();
		}
		
		return null;	      
	     
	}
}
