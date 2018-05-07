package dBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.jdbc.result.ResultSetMetaData;

public class BookDBC {

	String url = "jdbc:mysql://localhost:3306/ library";
	String userN = "root";
	String passW = "yqfhg.lhk2014";
	public ResultSet rs;
	public Connection con;
	public PreparedStatement st;
	
	
	public BookDBC(String qStatement) {
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		 con = DriverManager.getConnection(url , userN , passW);
		st = con.prepareStatement(qStatement);	
		 rs =st.executeQuery();
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		
	}



}
