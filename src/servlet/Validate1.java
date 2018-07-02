package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.user_auth_dao;

/**
 * Servlet implementation class Validate1
 */
@WebServlet("/Validate1")
public class Validate1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username,password;
		username = request.getParameter("username");
		password = request.getParameter("password");
		
		if(user_auth_dao.validate1(username, password)) {
			if(username.equals("yajna")) {
					HttpSession mysession=request.getSession();
					mysession.setAttribute("username", username);
				request.getRequestDispatcher("welcome.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("police_welcome.jsp").forward(request, response);
				HttpSession mysession=request.getSession();
				mysession.setAttribute("username", username);
			}
		}else {
			request.setAttribute("Error Message!", user_auth_dao.validate1(username, password));
			request.getRequestDispatcher("login.jsp").include(request, response);
		}
	}	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}

}
