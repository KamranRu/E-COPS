
  <!DOCTYPE html>

<head>
    <meta charset="ISO-8859-1">
    <title>Registration Page</title>
    
    <link href="cmrcd.css" rel="stylesheet" type="text/css">
    
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
           
                
            <div class="login">


            <form id="gothere" action="cmrcd" method="post" >
               
                <h1>CRIMINAL RECORD FORM</h1><br>
                
                <input type="text" name="criminal_id" placeholder="Enter Criminal Id" required>

                <input type="text"  name="first_name" placeholder="First Name" required><br><br>

                <input type="text"  name="last_name" placeholder="Last Name" required>

                <input type="text"  name="father_name" placeholder="Father Name" required>

                <br><br>

                <input type="text" name="address" placeholder="Address" required>

                <input type="text" name="age" placeholder="Age" required>

                <br><br>
                
                 <tr>
        <td width="23%" height="25"><b>SEX&nbsp;</b></td>
        <td width="77%" height="25"><b><select size="1" name="sex" tabindex="7" required> 
         <option selected value="Sex">SEX</option>
            <option>MALE</option>
            <option>FEMALE</option>
       </select></b> </td>
      </tr>	             

                <input type="text" name="complexition" placeholder="Complextionn" required><br><br>

                <input type="text"  name="height" placeholder="Height" required>

                <input type="text"  name="weight" placeholder="Weight" required><br><br>

                <input type="text"  name="identification_mark" placeholder="Identification Mark" required>


                <input type="text"  name="prv_crm_rcd" placeholder="Previous Crime Record" required><br><br>
                
                <input type="text"  name="fir_no" placeholder="FIR No" id="dist" required>
                
                <input type="text"  name="area_of_optn" placeholder="Area Of Operation" id="dist" required>
                
                <input type="text"  name="dist" placeholder="District" id="dist" required><br><br>

                <a href="#"><input type="submit" value="Submit" name="B1" onclick="cmrcd()" tabindex="12"></a>
                
                <a href="#"><input type="reset" value="Reset" name="f1" onsubmit="return matchpassword()" tabindex="12"></a>

                
            </form>
            
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
  