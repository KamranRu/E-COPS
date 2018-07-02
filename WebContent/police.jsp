<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.net.*" %>
	 <%@ page import="java.io.*" %>
	 <%@ page import="java.sql.*" %>

<!DOCTYPE html>

<head>
    <meta charset="ISO-8859-1">
    <title>Registration Page</title>
    
    <link href="police.css" rel="stylesheet" type="text/css">
    
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

</head>

<body>

        <div class="container">
        
            
            
        <div class="responsive-bar">
               
                <div id="sidebar">
               
                <li><a href="home2.jsp"><font color="#b4eb0d"><i class="fa fa-home" aria-hidden="true"></i></font> HOME</a></li>
		        <li><a href="Aboutus.jsp"><font color="#b4eb0d"><i class="fa fa-usb" aria-hidden="true"></i></font> ABOUT US</a></li><br><br>

		<div id="sidebar-btn">
			<span></span>
			<span></span>
			<span></span>
		</div>
	</div>
        
            
        </div>
        
        <div class="full-width margin-top20px">
           
                
            <h2 style="font-size:3vw">POLICE / INVESTIGATOR LIST</h2><br><br>

               <div class="col-7">
                <div class="postal">
                    <%
	Connection con = null;
	PreparedStatement stat = null;
	ResultSet rs = null;
	
	int ctr=0,flag=0;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecops","root","root");

	
	stat = con.prepareStatement("select * from police");

	rs=stat.executeQuery();

	%>
                       <br><h3>List of Available police officer:</h3>
                            <table border=1>
                            <tr>
                                <td><font color="white">NAME</font></td>
                                <td><font color="white">DESINGNATION</font></td>
                                <td><font color="white">CATEGORY</font></td>

                            </tr>
                            
                            	<%
	String str_name,str_desingnation,str_category;
	while(rs.next())
	{
		
		
					
		str_name=rs.getString(1);
		out.println("<td>");
		out.println(str_name);
		
		str_desingnation=rs.getString(2);
		out.println("<td>");
		out.println(str_desingnation);
		
		str_category=rs.getString(3);
		out.println("<td>");
		out.println(str_category);
		
					
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
                    
                </div>
            </div>
            
            <div class="col-3">
                 
            <div class="content">
            
           <h3>Add New Police officer</h3>
           
			<form id="add_police" action="add_police" method="post" >
           
           
           <input type="text" name="str_name" placeholder="NAME" class="inp" required autofocus><br>
           
           <input type="text" name="str_desingnation" placeholder="DESINGNATION" class="inp" required><br>
           
            <tr>
        <td width="23%" height="25"><b>CATEGORY:&nbsp;</b></td>
        <td width="77%" height="25"><b><select size="1" name="str_category" tabindex="7" required> <br><br>
         
      
         <center>
         <option selected value="Select category">SELECT CATEGORY</option>
            <option>POLICE</option>
            <option>INVESTIGATOR</option>
       </select>
       </center>
       
      <br><br>
            
           <input type="submit" name="submit" value="Add" id="sub-btn">
           <input type="Reset" name="reset" value="Clear" id="sub-btn">
           </form>
           </div>
                </form>
               
            </div>
                
            </div>
                  
            
            
                
             
            <div style="clear: both;"></div>
            
            </div>
        
            
            <div class="full-width">
           
            <p class="footer-text">@2018 Designing World. By Kamran Alam</p>
            
            </div>
            
        
            </div>

    
    
    <SCRIPT type="JavaScript">
  function cmrcd()
  {
  document.getElementById("B1").action="cmrcd";
  document.getElementById("B1").submit();
  }
 </SCRIPT>
    
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







