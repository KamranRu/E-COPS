package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Firdet;
import dao.Firsubmit;

/**
 * Servlet implementation class Status
 */
@WebServlet("/Status")
public class Status extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sta=request.getParameter("sta");
		String inv=request.getParameter("inv");
		String tok=request.getParameter("tok");
		
		System.out.println("1st sta" +sta);
		System.out.println("1st inv" +inv);
		System.out.println("1st tok" +tok);
		
		Firdet fd =new Firdet();
		fd.setSta(sta);
		fd.setInv(inv);
		fd.setTok(tok);
		
		
	Firsubmit fs=new Firsubmit();
    String adm=fs.admadd(fd);
	if(adm.equals("admadded!")){
		request.getRequestDispatcher("Admaloc.html").forward(request, response);
	}else{
		request.setAttribute("Error Message!",adm);
			request.getRequestDispatcher("Listfir.html").forward(request, response);
	}
		
	}

}
