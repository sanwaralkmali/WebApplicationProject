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
	public String[] s;
	public String str = "";

	public void doSearch(String search) {
		
	String qStatement = "select * From books Where book_id=? or book_name=? or author=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url , userN , passW);
			PreparedStatement st = con.prepareStatement(qStatement);
			st.setString(1, search);
			st.setString(2, search);
			st.setString(3, search);
			

				
				ResultSet rs =st.executeQuery();
				rs.next();
				ResultSetMetaData metaData = (ResultSetMetaData) rs.getMetaData();
               int numberOfColumns = metaData.getColumnCount();
               
               str = "number is " + numberOfColumns;
               
               s=new String[numberOfColumns];
               
               for(int i = 1; i<= numberOfColumns; i++){
            	  s[i]= (String) rs.getString(i);
            	  
            	  
            	 
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
