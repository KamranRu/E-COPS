package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import bean.police_bean;
public class police_dao {
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
	
	public String add_police (police_bean pd) {
		Connection con;
		try {
	 		
	
		String str_name,str_desingnation,str_category;
		
 		str_name=pd.getStr_name();
 		str_desingnation=pd.getStr_desingnation(); 		
 		str_category=pd.getStr_category(); 		
 		
 		
 		System.out.println("In dao class "+str_name+"    "+str_desingnation);
 	
 		con=getConnection();
 		
 		PreparedStatement stat=con.prepareStatement("insert into police(name,desingnation,category)values(?,?,?)");
		
		stat.setString(1,str_name);
		stat.setString(2,str_desingnation);
		stat.setString(3,str_category);

		
		
		int rs=stat.executeUpdate();
 		if(rs!=0) {
 			return "Police officer added!";
 		}
	}catch(Exception e) {
 		e.printStackTrace();
   }
 		return "Sorry! Try Again!";
}
	private String getStr_desingnation() {
		// TODO Auto-generated method stub
		return null;
	}
	private String getStr_name() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
