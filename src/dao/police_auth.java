/* Connecting to the database for the authentication purpose */
package dao;
import java.sql.*;

public class police_auth {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecops","root","root"); 
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	public static boolean police_validate(String username,String password) {
		Connection con=getConnection();
		boolean status=false;
		try {
		PreparedStatement pst=con.prepareStatement("select * from user_auth where username=? and password=?");
		pst.setString(1, username);
		pst.setString(2,password);
		ResultSet rss=pst.executeQuery();
		while(rss.next()) {
			
			if(status=true)
		{
			
			
			rss.getString("username");
			rss.getString("password");
		}	
	}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}