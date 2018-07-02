<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NEW USER</title>

</head>
<body>
<form id="gothere" action="register" method="POST" >
 <SCRIPT type="JavaScript">
  function register()
  {
  if( document.gothere.Password.value!= document.gothere.Password2.value)
  {
  alert("The two passwords do not match");
  return;
  }
  document.getElementById("gothere").action="register";
  document.getElementById("gothere").submit();
  }
 </SCRIPT>	
 
 <p align="center">
  <b><font size="5"> New User Registration</font></b>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </p>
 <p align="left">
  &nbsp;<b><font color="#FF0000">( Field marked * are necessary)</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
  </p>
  <div align="left">
    <table border="0" width="100%">
      <tr>
        <td width="23%"><b>User *:</b></td>
        <td width="77%">	
            <b>
  			<input type="text" name="UserName" size="20" tabindex="1" required>
            </b>
        </td>
      </tr>
      <tr>
        <td width="23%">
            <b>
            Password*:</b></td>
        <td width="77%"><b><input type="password" name="Password" size="20" tabindex="2" required>
          </b>
        </td>
      </tr>
      <tr>
        <td width="23%">
            <b>
            Confirm Password*:</b>
        </td>
        <td width="77%"><b><input type="password" name="Password2" size="20" tabindex="3" required>
          </b>
        </td>
      </tr>
      <tr>
        <td width="23%">
            <b>
            Name*:</b></td>
        <td width="77%">
            <b><input type="text" name="Name" size="20" tabindex="4" required>
            </b>
        </td>
      </tr>
    </table>
  </div>
  <div align="center">
    
    <table border="0" width="100%" height="201">
      <tr>
        <td width="23%" height="25"><b>Email ID*:</b></td>
        <td width="77%" height="25"><b><input type="text" name="Email" size="20" tabindex="10" required> </b> </td>
      </tr>
      <tr>
        <td width="23%" height="25"><b>Phone Number*:</b></td>
        <td width="77%" height="25"><b><input type="text" name="Phone" size="20" tabindex="11" required> </b> </td>
      </tr>
      <tr>
        <td width="23%" height="1"></td>
        <td width="77%" height="1"> </td>
      </tr>
      <tr>
        <td width="23%" height="21"></td>
        <td width="77%" height="21"> 
   <b> 
   <input type="submit" value="Submit" name="B1" tabindex="12">
   </b>
 </td>
      </tr>
    </table>
    
  </div>
  
</form>
</body>
</html>