

<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="policelogin.css">
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
        <h3 style="font-size:3vw">POLICE LOGIN</h3><br><br>
        <div class="row">
           
            <div class="column">
               
                <div id="main">
                       <div id="tab-btn">
                           <a href="#" class="login active">Sign In</a>

                       </div>
                       <div class="content">
                           <h2>Police Login</h2>
                           <form id="police_validate" action="police_validate" method="get">

                           <input type="text" name="username" placeholder="Username" class="inp" required autofocus><br>

                           <input type="password" name="password" placeholder="Password" class="inp" required><br>
                           <a href="newuser.jsp" id="forgot">Register</a><br>
                           <input type="submit" name="submit" value="SIGN IN" id="sub-btn">
                           </form>
                       </div>

           </div>
        
                </div>
            
        </div>
        
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








 