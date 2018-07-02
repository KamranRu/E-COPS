<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.net.*" %>
	 <%@ page import="java.io.*" %>
	 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MY WEBSITE DESGIN</title>
    <link rel="stylesheet" href="wanted.css">
    
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>

<body>

  	</SCRIPT>
	<%
	Connection con = null;
	PreparedStatement stat = null;
	ResultSet rs = null;
	
	int ctr=0,flag=0;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecops","root","root");

	
	stat = con.prepareStatement("select first_name,last_name,age from criminal_record");

	rs=stat.executeQuery();

	%>
	<div class="container">
        
        <div class="full-width">
           
            <h2 style="font-size:4.5vw"> MOST WANTED</h2>
            
        </div>
            
        <div class="responsive-bar">
               
                <div id="sidebar">
               
                <li><a href="homepage2.html"><font color="#b4eb0d"><i class="fa fa-home" aria-hidden="true"></i></font> HOME</a></li>
		        <li><a href="Aboutus.html"><font color="#b4eb0d"><i class="fa fa-usb" aria-hidden="true"></i></font> ABOUT US</a></li><br><br>

		<div id="sidebar-btn">
			<span></span>
			<span></span>
			<span></span>
		</div>
	</div>
        
            </div>
        
        <div class="full-width margin-top20px">
           
            <div class="col-7">
                <div class="postal">
                    
                    <div class="row">
            <div class="column">
                <h3>List of most wanted criminals:</h3>
                <center>
                   <table border=1>
                    <tr>
                        <td>FIRST NAME</td>
                        <td>LAST NAME</td>
                        <td>AGE</td>
                    </tr>
                </table>
                </center>
            </div>
             
        </div>
                    
                </div>
                
            </div>
            
            <div style="clear: both;"></div>
            
        </div>
        
        <div class="full-width">
            <p class="footer-text"><font color="white">@2018 Designing World. By Kamran Alam</font></p>
        </div>
        
    </div>
	<%
	String first_name,last_name,age;
	while(rs.next())
	{
		
		
					
		first_name=rs.getString(1);
		out.println("<td>");
		out.println(first_name);
		
		last_name=rs.getString(2);
		out.println("<td>");
		out.println(last_name);
		
		age=rs.getString(2);
		out.println("<td>");
		out.println(age);
					
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
	
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>

	$(document).ready(function(){
		$('#sidebar-btn').click(function(){
			$('#sidebar').toggleClass('visible');
		});
	});

	</script>
</body>
</html>



