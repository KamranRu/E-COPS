<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.net.*" %>
	 <%@ page import="java.io.*" %>
	 <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FIR REGISTERED</title>
</head>
<body>

	
	<%
	Connection con = null;
	PreparedStatement stat = null;
	ResultSet rs = null;
	
	int ctr=0,flag=0;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecops","root","root");

	
	stat = con.prepareStatement("select fir_no,dist,ps,date,day,time,place,village,area,city,state,name,father,dob,nationality,passport,occupation,address from fir ");

	rs=stat.executeQuery();

	%>
	<br><h3>FIR DETAILS</h3>
	<table border=1>
	<tr>
				<td>FIR NO</td>
				<td>DISTRICT</td>
				<td>POLICE STATION</td>
				<td>DATE</td>
				<td>DAY</td>
				<td>TIME</td>
				<td>PLACE</td>
				<td>VILLAGE</td>
				<td>AREA</td>
				<td>CITY</td>
				<td>STATE</td>
				<td>NAME</td>
				<td>FATHER'S NAME</td>
				<td>DATE OF BIRTH</td>
				<td>NATIONALITY</td>
				<td>PASSPORT NO</td>
				<td>OCCUPATION</td>
				<td>ADDRESSS</td>
				
		
	</tr>
	<%
	String fir_no,dist,ps,date,day,time,place,village,area,city,state,name,father,dob,nationality,passport,occupation,address;
	while(rs.next())
	{
		
		
					
		fir_no=rs.getString(1);
		out.println("<td>");
		out.println(fir_no);
		
		dist=rs.getString(2);
		out.println("<td>");
		out.println(dist);
		
		ps=rs.getString(3);
		out.println("<td>");
		out.println(ps);

		date=rs.getString(4);
		out.println("<td>");
		out.println(date);
		
		day=rs.getString(5);
		out.println("<td>");
		out.println(day);


		time=rs.getString(6);
		out.println("<td>");
		out.println(time);

		place=rs.getString(7);
		out.println("<td>");
		out.println(place);

		village=rs.getString(8);
		out.println("<td>");
		out.println(village);
		
		area=rs.getString(9);
		out.println("<td>");
		out.println(area);
		
		city=rs.getString(10);
		out.println("<td>");
		out.println(city);
		

		state=rs.getString(11);
		out.println("<td>");
		out.println(state);

		name=rs.getString(12);
		out.println("<td>");
		out.println(name);

		father=rs.getString(13);
		out.println("<td>");
		out.println(father);

		dob=rs.getString(14);
		out.println("<td>");
		out.println(dob);

		nationality=rs.getString(15);
		out.println("<td>");
		out.println(nationality);

		passport=rs.getString(16);
		out.println("<td>");
		out.println(passport);

		occupation=rs.getString(17);
		out.println("<td>");
		out.println(occupation);

		address=rs.getString(18);
		out.println("<td>");
		out.println(address);		
					
		out.println("</tr>");
	}
	%>
	<%
	}
	catch(Exception e)
	{
	out.print("Error = " + e + "<HR>");
	}
	out.println("</table>");
	%>
	</table>
</body>
</html>