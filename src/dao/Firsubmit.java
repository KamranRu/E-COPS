package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Firdet;

public class Firsubmit {
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
	public String fiadd(Firdet et) {
		
		 Connection con;
		 
		    int token=(int)(10000*Math.random()+1);
		 	String name=et.getName();
			String sub=et.getSub();
			String loc=et.getLoc();
			String date=et.getDt();
			String description=et.getAbt();
			
			try {
				con=getConnection();
				
				PreparedStatement pst=con.prepareStatement("insert into firdet values(?,?,?,?,?,?,'Notissued','Notissued')"); 
			
				pst.setString(1, name);
				pst.setString(2, sub);
				pst.setString(3, loc);
				pst.setString(4, date);
				pst.setString(5, description);
				pst.setInt(6, token);
				
				int result=pst.executeUpdate();
				if(result!=0) {
					return "firadded!";
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return "Something is wrong there!";
	}
	public List<Firdet> firdata() {
		Connection con;
		List<Firdet> firlist = new ArrayList<Firdet>();
		try {
			con=getConnection();
			
			PreparedStatement pst=con.prepareStatement("select * from firdet where status='Notissued'");
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Firdet fd=new Firdet();
				
				fd.setName(rs.getString(1));
				fd.setSub(rs.getString(2));
				fd.setLoc(rs.getString(3));
				fd.setDt(rs.getString(4));
				fd.setAbt(rs.getString(5));
				fd.setTok(rs.getString(6));
				firlist.add(fd);
			}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return firlist;	
			}
	public String admadd(Firdet fd) {
		
		 Connection con;
	
		 	String status=fd.getSta();
		 	
			System.out.println("Sta value is" +status);
			String officer_alc=fd.getInv();
			System.out.println("officer_alc value is" +officer_alc);
			String token=fd.getTok();
			System.out.println("Token value is" +token);
			
			try {
				con=getConnection();
				
				PreparedStatement pst=con.prepareStatement("update firdet set status=?,officer_alc=? where token=?"); 
			
				pst.setString(1, status);
				pst.setString(2, officer_alc);
				pst.setString(3, token);
				
				int result=pst.executeUpdate();
				if(result!=0) {
					return "admadded!";
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return "Something is wrong there!";
	}
		}

	
