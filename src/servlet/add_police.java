package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import bean.police_bean;
import dao.police_dao;

/**
 * Servlet implementation class add_police
 */
@WebServlet("/add_police")
public class add_police extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String str_name=request.getParameter("str_name");
		String str_desingnation=request.getParameter("str_desingnation");
		String str_category=request.getParameter("str_category");

		
		
		System.out.println( str_name+"    "+str_desingnation);
		
		police_bean pb=new police_bean();
		
		pb.setStr_name(str_name);
		pb.setStr_desingnation(str_desingnation);
		pb.setStr_category(str_category);


 		police_dao pd =new police_dao();
 		String policeadd=pd.add_police(pb);
 		if(policeadd.equals("Police officer added!")) {
 			request.getRequestDispatcher("logout.jsp").forward(request, response);
 		}
 		else {
 			request.setAttribute("Error Message!", policeadd);
 			request.getRequestDispatcher("login.jsp").forward(request, response);
 		}
 
	}

	}

