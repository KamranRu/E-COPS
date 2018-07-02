<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
    <%@ page import="bean.Firdet" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fir Records</title>
<style>
fieldset{
position:absolute;
padding:50px;
left:400px;
right:200px;
top:100px;
}
</style>
</head>
<%
List<Firdet> firlist = (List<Firdet>)request.getAttribute("firlist");
System.out.println("Firlist is"+firlist.size());
%>
<body>

<fieldset>
 <legend align="center"> Fir List </legend>
	<table border="2"> 
			<tr>
			
			<td><font size="2" color="#00FF00">Sno.</font></td>
			<td><font size="2" color="#00FF00">Name</font></td>
			<td><font size="2" color="#00FF00">Subject</font></td>
			<td><font size="2" color="#00FF00">Location</font></td>
			<td><font size="2" color="#00FF00">Date</font></td>
			<td><font size="2" color="#00FF00">Description</font></td>
			<td><font size="2" color="#00FF00">Token</font></td>
			<td><font size="2" color="#00FF00">Status</font></td>
			<td><font size="2" color="#00FF00">Inv_Officer</font></td>
			</tr>
			<%
			int i=0;
		System.out.println("Firlist is"+firlist.size());
			for(Firdet fir : firlist){
				%>
				<tr>
				<td><font color="green"><%=i=i+1 %></font></td>
	
				<td><font color="green"><%=fir.getName() %></font></td>
				<td><font color="green"><%=fir.getSub() %></font></td>
				<td><font color="green"><%=fir.getLoc() %></font></td>
				<td><font color="green"><%=fir.getDt() %></font></td>
				<td><font color="green"><%=fir.getAbt() %></font></td>
				<form action="Status" method="post">
				<td><input type="text" name="tok" value="<%=fir.getTok() %>" readonly></td>
				<td><input type="text" name="sta" value=""></td>
				<td><input type="text" name="inv" value=""></td>
				<td><button>Assign</button></td>
				</form>
			</tr>
			
				<%
			}
			%>
				
		</table>	
		</fieldset>	
</body>
</html>