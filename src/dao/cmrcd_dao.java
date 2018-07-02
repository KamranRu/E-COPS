package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import bean.cmrcd_bean;

public class cmrcd_dao {
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
	public String cmrcd(cmrcd_bean cb1) 
	{
		Connection con;
		
		
		String criminal_id=cb1.getCriminal_id();
		String first_name=cb1.getFirst_name();
		String last_name=cb1.getLast_name();
		String father_name=cb1.getFather_name();
		String address=cb1.getAddress();
		String age=cb1.getAge();
		String sex=cb1.getSex();
		String complexition=cb1.getComplexition();
		String height=cb1.getHeight();
		String weight=cb1.getWeight();
		String identification_mark=cb1.getIdentification_mark();
		String prv_crm_rcd=cb1.getPrv_crm_rcd();
		String fir_no=cb1.getFir_no();
		String area_of_optn=cb1.getArea_of_optn();
		String dist=cb1.getDist();
		try {
			
			con = getConnection();
			
			
			PreparedStatement stat=con.prepareStatement("insert into criminal_record(criminal_id,first_name,last_name,father_name,address,age,sex,complexition,height,weight,identification_mark,prv_crm_rcd,fir_no,area_of_optn,dist)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
			
			stat.setString(1,criminal_id);
			stat.setString(2,first_name);
			stat.setString(3,last_name);
			stat.setString(4,father_name);
			stat.setString(5,address);
			stat.setString(6,age);
			stat.setString(7,sex);
			stat.setString(8,complexition);
			stat.setString(9,height);
			stat.setString(10,weight);
			stat.setString(11,identification_mark);
			stat.setString(12,prv_crm_rcd);
			stat.setString(13,fir_no);
			stat.setString(14,area_of_optn);
			stat.setString(15,dist);
			
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
