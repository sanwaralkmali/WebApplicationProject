import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MyDBC {
	
	String url = "jdbc:mysql://localhost:3306/ mylibrary";
	String userN = "root";
	String passW = "yqfhg.lhk2014";
	
	
public boolean chickLogin(String username , String password) {
		
	String qStatement = "select * From users Where username=? and password=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url , userN , passW);
			PreparedStatement st = con.prepareStatement(qStatement);
			st.setString(1, username);
			st.setString(2, password);
			
			ResultSet rs =st.executeQuery();
			
			if(rs.next()) {
				return true;
				
			}
			
			
				
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		return false; 
		
	}



}
