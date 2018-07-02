package servlet;
import bean.Firdet;
import dao.Firsubmit;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Firadd
 */
@WebServlet("/Firadd")
public class Firadd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String sub=request.getParameter("sub");
		String loc=request.getParameter("loc");
		String dt=request.getParameter("dt");
		String abt=request.getParameter("abt");
		
		Firdet et=new Firdet();
		et.setName(name);
		et.setSub(sub);
		et.setLoc(loc);
		et.setDt(dt);
		et.setAbt(abt);
		
		Firsubmit st =new Firsubmit();
		String added=st.fiadd(et);
		if(added.equals("firadded!")) {
			request.getRequestDispatcher("Submitted.html").forward(request, response);
		}
		else {
			request.getRequestDispatcher("Firfile.html").include(request, response);
		}
	}

}
