package servlet;

import java.io.IOException;
import java.util.List;

import dao.Firsubmit;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Firdet;

/**
 * Servlet implementation class Firsub
 */
@WebServlet("/Firsub")
public class Firsub extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		Firsubmit af=new Firsubmit();
		
		List<Firdet> firlist=af.firdata();
		
		System.out.println("Firlist in java  is  @@@@@"+firlist.size());
		request.setAttribute("firlist", firlist);
		RequestDispatcher rsd = request.getRequestDispatcher("Firres.jsp");
		rsd.forward(request, response);
	}

}
