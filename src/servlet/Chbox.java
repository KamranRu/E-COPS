package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
/**
 * Servlet implementation class Chbox
 */
@WebServlet("/Chbox")
public class Chbox extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String[] tok = request.getParameterValues("tok");
		  List list =  Arrays.asList(tok); 
		  request.setAttribute("tok", list); 
		  RequestDispatcher rd = request.getRequestDispatcher("assign.jsp");
		  rd.forward(request, response);
		 }
}
