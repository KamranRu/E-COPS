package dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import bean.cmrcd_bean;
import bean.fir_bean;

public class fir_dao {
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
	public String fir(fir_bean fb) {
		{
			Connection con;
			
			
			String dist=fb.getDist();
			String ps=fb.getPs();
			String date=fb.getDate();
			String fir_no=fb.getFir_no();
			String act=fb.getAct();
			String day=fb.getDay();
			String date_from=fb.getDate_from();
			String date_to=fb.getDate_to();
			String time=fb.getTime();
			String date_rec=fb.getDate_rec();
			String time_rec=fb.getTime_rec();
			String type_info=fb.getType_info();
			String place=fb.getPlace();
			String village=fb.getVillage();
			String area=fb.getArea();
			String city=fb.getCity();
			String dist1=fb.getDist1();
			String state=fb.getState();
			String name=fb.getName();
			String father=fb.getFather();
			String dob=fb.getDob();
			String nationality=fb.getNationality();
			String passport=fb.getPassport();
			String occupation=fb.getOccupation();
			String address=fb.getAddress();
			String inv_name=fb.getInv_name();
			String inv_rank=fb.getInv_rank();
			String inv_id=fb.getInv_id();			
			
			try {
				
				con = getConnection();
				
				
				PreparedStatement stat=con.prepareStatement("insert into fir(dist,ps,date,fir_no,act,day,date_from,date_to,time,date_rec,time_rec,type_info,place,village,area,city,dist1,state,name,father,dob,nationality,passport,occupation,address,inv_name,inv_rank,inv_id)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
				
				stat.setString(1,dist);
				stat.setString(2,ps);
				stat.setString(3,date);
				stat.setString(4,fir_no);
				stat.setString(5,act);
				stat.setString(6,day);
				stat.setString(7,date_from);
				stat.setString(8,date_to);
				stat.setString(9,time);
				stat.setString(10,date_rec);
				stat.setString(11,time_rec);
				stat.setString(12,type_info);
				stat.setString(13,place);
				stat.setString(14,village);
				stat.setString(15,area);
				stat.setString(16,city);
				stat.setString(17,dist1);
				stat.setString(18,state);
				stat.setString(19,name);
				stat.setString(20,father);
				stat.setString(21,dob);
				stat.setString(22,nationality);
				stat.setString(23,passport);
				stat.setString(24,occupation);
				stat.setString(25,address);
				stat.setString(26,inv_name);
				stat.setString(27,inv_rank);
				stat.setString(28,inv_id);
				
				
				int result=stat.executeUpdate(); 
				{
					if(result!=0){
						 return "hii!";
					}
				}
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			return "Something is wrong there!";
		}
	}
}

