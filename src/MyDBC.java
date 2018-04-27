import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MyDBC {
	
	String url = "jdbc:mysql://localhost:3306/ mylibrary";
	String userN = "root";
	String passW = "yqfhg.lhk2014";
	static boolean isAdmin=false;
	
	
public boolean chickLogin(String username , String password) {
		
	String qStatement = "select * From users Where username=? and password=?";
	String qStatement2 = "select * From users Where username=? and password=? and isAdmin=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url , userN , passW);
			PreparedStatement st = con.prepareStatement(qStatement);
			PreparedStatement st2 = con.prepareStatement(qStatement2);
			st.setString(1, username);
			st.setString(2, password);
		/*	
			st2.setString(1, username);
			st2.setString(2, password);
			st2.setString(3, "y");*/
			
			ResultSet rs =st.executeQuery();
			//String s = rs.getString(3);
			
			if(rs.next()) {
				String s = rs.getString(4);
				System.out.println(s);
				//if(s.equals(""))
				/*if(s.equals("y"))
					isAdmin=true;*/
							
				return true;
				
			}
			
			  rs.close();
			    st.close();
			    con.close();
			
				
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		return false; 
		
	}



}
