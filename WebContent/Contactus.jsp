<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="eng">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="Contactus.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>

<body>
   
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
   <br>
   <div class="container">
   
    <p>CONTACT US</p>
    
    <div class="login">
      <input type="text" placeholder="Your Name" class="input">
      <input type="text" placeholder="Your Email Address" class="input">
    </div>
    
    <div class="subject">
      <input type="text" placeholder="Subject" class="input">
    </div>
    
    <div class="msg">
      <textarea  class="area" placeholder="Leave a Message"></textarea>
    </div>
    
    <div class="btn">Send Message</div>
  </div>

   <script>
       
    $(".btn").click(function(){
        
    $(".input, .area").val("");
   
    });
       
    </script>
    
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


