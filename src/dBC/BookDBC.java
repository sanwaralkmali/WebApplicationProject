package dBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BookDBC {

	String url = "jdbc:mysql://localhost:3306/ mylibrary";
	String userN = "root";
	String passW = "yqfhg.lhk2014";
	public String s = "";
	
public void chickLogin(String username) {
		
	String qStatement = "select * From users Where username=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url , userN , passW);
			PreparedStatement st = con.prepareStatement(qStatement);
			st.setString(1, username);
			

			ResultSet rs =st.executeQuery();
			
			while(rs.next()) {
				try {
					s = rs.getString(2);
					System.out.println(s);
				}catch(Exception e){
					
				}
				
							
				
			}
			
			  rs.close();
			    st.close();
			    con.close();
			
				
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		
	}



}
