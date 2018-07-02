<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.http.HttpSession" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


</head>
<body>
	<CENTER>
	<H1> <u>ECOPS</u> </H1>
	</CENTER>
	
	<%
	session.invalidate();
	%>
        <center>
	<BR><BR><BR><BR><b>You have logged out successfully.
        <BR><BR>WANT TO LOGIN AGAIN? <a href="login.jsp">Click here</a></b>
        </center>
</body>
</html>