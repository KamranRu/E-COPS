package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.cmrcd_bean;
import dao.cmrcd_dao;

/**
 * Servlet implementation class cmrcd
 */
@WebServlet("/cmrcd")
public class cmrcd extends HttpServlet {
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
		String criminal_id=request.getParameter("criminal_id");
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");
		String father_name=request.getParameter("father_name");
		
		String address=request.getParameter("address");
		String age=request.getParameter("age");
		String sex=request.getParameter("sex");
		String complexition=request.getParameter("complexition");
		String height=request.getParameter("height");
		String weight=request.getParameter("weight");

		String identification_mark=request.getParameter("identification_mark");
		String prv_crm_rcd=request.getParameter("prv_crm_rcd");
		String fir_no=request.getParameter("fir_no");
		String area_of_optn=request.getParameter("area_of_optn");
		String dist=request.getParameter("dist");
		cmrcd_bean cb1 = new cmrcd_bean();
		
		cb1.setCriminal_id(criminal_id);
		cb1.setFirst_name(first_name);
		cb1.setLast_name(last_name);
		cb1.setFather_name(father_name);
		cb1.setAddress(address);
		cb1.setAge(age);
		cb1.setSex(sex);
		cb1.setComplexition(complexition);
		cb1.setHeight(height);
		cb1.setWeight(weight);
		cb1.setIdentification_mark(identification_mark);
		cb1.setPrv_crm_rcd(prv_crm_rcd);
		cb1.setFir_no(fir_no);
		cb1.setArea_of_optn(area_of_optn);
		cb1.setDist(dist);
		
		cmrcd_dao cd1=new cmrcd_dao();
		String cmrcd=cd1.cmrcd(cb1);
		if(cmrcd.equals("hii!")) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else {
			request.setAttribute("error message", cmrcd);
			request.getRequestDispatcher("demo.jsp").forward(request, response);
		}	
	}

}
