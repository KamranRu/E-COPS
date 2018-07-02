package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.cmrcd_bean;
import bean.fir_bean;
import dao.cmrcd_dao;
import dao.fir_dao;

/**
 * Servlet implementation class fir
 */
@WebServlet("/fir")
public class fir extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dist=request.getParameter("dist");
		String ps=request.getParameter("ps");
		String date=request.getParameter("date");
		String fir_no=request.getParameter("fir_no");
		
		String act=request.getParameter("act");
		String day=request.getParameter("day");
		String date_from=request.getParameter("date_from");
		String date_to=request.getParameter("date_to");
		String time=request.getParameter("time");
		String date_rec=request.getParameter("date_rec");

		String time_rec=request.getParameter("time_rec");
		String type_info=request.getParameter("type_info");
		String place=request.getParameter("place");
		String village=request.getParameter("village");
		String area=request.getParameter("area");
		String city=request.getParameter("city");
		String dist1=request.getParameter("dist1");
		String state=request.getParameter("state");
		String name=request.getParameter("name");
		String father=request.getParameter("father");
		String dob=request.getParameter("dob");
		String nationality=request.getParameter("nationality");
		String passport=request.getParameter("passport");
		String occupation=request.getParameter("occupation");
		String address=request.getParameter("address");
		String inv_name=request.getParameter("inv_name");
		String inv_rank=request.getParameter("inv_rank");
		String inv_id=request.getParameter("inv_id");


		fir_bean fb = new fir_bean();
		
		fb.setDist(dist);
		fb.setPs(ps);
		fb.setDate(date);
		fb.setFir_no(fir_no);
		fb.setAct(act);
		fb.setDay(day);
		fb.setDate_from(date_from);
		fb.setDate_to(date_to);
		fb.setTime(time);
		fb.setDate_rec(date_rec);
		fb.setTime_rec(time_rec);
		fb.setType_info(type_info);
		fb.setPlace(place);
		fb.setVillage(village);
		fb.setArea(area);
		fb.setCity(city);
		fb.setDist1(dist1);
		fb.setState(state);
		fb.setName(name);
		fb.setFather(father);
		fb.setDob(dob);
		fb.setNationality(nationality);
		fb.setPassport(passport);
		fb.setOccupation(occupation);
		fb.setAddress(address);
		fb.setInv_name(inv_name);
		fb.setInv_rank(inv_rank);
		fb.setInv_id(inv_id);

		fir_dao fd=new fir_dao();
		String fir=fd.fir(fb);
		if(fir.equals("hii!")) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else {
			request.setAttribute("error message", fir);
			request.getRequestDispatcher("demo.jsp").forward(request, response);
		}	
	}

}
