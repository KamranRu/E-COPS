package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.police_auth;
import dao.user_auth_dao;

/**
 * Servlet implementation class Validate
 */
@WebServlet("/police_validate")
public class police_validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username,password;
		username = request.getParameter("username");
		password = request.getParameter("password");
		
		if(police_auth.police_validate(username, password)) {
			if(username.equals("banty")) {
					HttpSession mysession=request.getSession();
					mysession.setAttribute("username", username);
				request.getRequestDispatcher("police_welcome.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("police_welcome.jsp").forward(request, response);
				HttpSession mysession=request.getSession();
				mysession.setAttribute("username", username);
			}
		}else {
			request.setAttribute("Error Message!",police_auth.police_validate(username, password));
			request.getRequestDispatcher("login.jsp").include(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
