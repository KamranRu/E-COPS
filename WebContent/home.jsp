

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MY WEBSITE DESGIN</title>
    <link rel="stylesheet" href="home.css">
    
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>

<body>
    
    <div class="container">
        
        <div class="full-width">
           
            <h2 style="font-size:4.5vw"> THE POLICE-AT YOUR SERVICE</h2>
            
        </div>
            
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
           
            <div class="col-7">
                <div class="postal">
                    
                    <div class="row">
            <div class="column">
                <h1><font color="black">CITIZEN'S SPACE</font></h1>
                <p>This is your space we are here to help you can use this space to lodge a complants or information about the status of your complaintes/FIR You can also take a look at  the way we function</p>
                <a href="Firfile.html"><font color="darkblue">CLICK HERE</font></a>
            </div>
             <div class="column">
                 <h1><font color="black">POLICE SPACE</font></h1>
                <p>Police personal can login here</p>
                 <a href="policelogin.jsp"><font color="darkblue">CLICK HERE</font></a>
            </div>
             <div class="column">
                 <h1><font color="black">SYSTEM ADMINISTRATOR</font></h1>
                <p>System Administrator can click here for Login</p>
                 <a href="login.jsp"><font color="darkblue">CLICK HERE</font></a>
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
