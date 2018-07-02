package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import bean.new_userbean1;

import dao.new_userdao1;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String UserName=request.getParameter("UserName");
		String Password=request.getParameter("Password");
		String Password2=request.getParameter("Password2");
		String Name=request.getParameter("Name");
		String Email=request.getParameter("Email");
		String Phone=request.getParameter("Phone");
		
		new_userbean1 ub1 = new new_userbean1();
		ub1.setUserName(UserName);
		ub1.setPassword(Password);
		ub1.setPassword2(Password2);
		ub1.setName(Name);
		ub1.setEmail(Email);
		ub1.setPhone(Phone);
		
		new_userdao1 ud1=new new_userdao1();
		String userregister=ud1.register(ub1);
		if(userregister.equals("Registered!")) {
			request.getRequestDispatcher("policelogin.jsp").forward(request, response);
		}
		else {
			request.setAttribute("error message", userregister);
			request.getRequestDispatcher("Hey_Buddy.jsp").forward(request, response);
		}
	}

}
