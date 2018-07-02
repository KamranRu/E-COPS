<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="welcome.css">
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
        <h2 style="font-size:3vw">ADMINSTRATIVE HOME</h2><br><br>
        <div class="row">
           
            <div class="column">
               
                <h1><font color="red">WELCOME BACK</font></h1>
                
                <a href="cmrcd.jsp">ENTER A CRIMINAL RECORD</a><br><br>
                
                <a href="Listfir.html">VIEW RECENT COMPLAINT</a><br><br>
                
                <a href="police.jsp">POLICE / INVESTIGATOR LIST</a><br><br>
                
                <a href="wanted.jsp">MOST WANTED LIST</a><br><br>
                
                <a href="logout.jsp">LOGOUT</a><br><br>
        
            </div>
            
        </div>
        
    </div>
    
    <div class="full-width">
           
            <p class="footer-text">@2018 Designing World. By Kamran Alam</p>
            
            </div>
    
    </div>
    
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

