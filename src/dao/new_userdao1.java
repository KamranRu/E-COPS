package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;


import bean.new_userbean1;

public class new_userdao1 {
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
	public String register(new_userbean1 ub1) 
	{
		Connection con;
		
		String UserName=ub1.getUserName();
		String Password=ub1.getPassword();
		String Name=ub1.getName();
		String Email=ub1.getEmail();
		String Phone=ub1.getPhone();
		try {
			
			con = getConnection();
			
			
			PreparedStatement ps1=con.prepareStatement("INSERT INTO user_auth values(?,?)");
			ps1.setString(1,UserName);
			ps1.setString(2,Password);

			PreparedStatement stat=con.prepareStatement("INSERT INTO user_profile(UserName,Password,Name,Email,Phone)values(?,?,?,?,?)");
			stat.setString(1,UserName);
			stat.setString(2,Password);
			stat.setString(3,Name);
			stat.setString(4,Email);
			stat.setString(5,Phone);

			stat.executeUpdate(); 
                       
            int result= ps1.executeUpdate(); 
			if(result != 0) {
				return "Registered!";
			}
				
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "Something is wrong there!";
	}
}
