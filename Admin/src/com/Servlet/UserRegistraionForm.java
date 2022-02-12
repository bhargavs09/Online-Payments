package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BeanClass.UserRegisterBean;
import com.Implementation.DaoImplement;
import com.Interface.MyInterface;

/**
 * Servlet implementation class UserRegistraionForm
 */
@WebServlet("/UserRegistraionForm")
public class UserRegistraionForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegistraionForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out=response.getWriter();
		
		
		String uname=request.getParameter("Username");
		System.out.println("HI"+uname);
		String upwd=request.getParameter("password");
		String email=request.getParameter("email");
		String area=request.getParameter("Area");
		String date=request.getParameter("date");
		String MobileNo=request.getParameter("MobileNo");
		String address=request.getParameter("address");
		String MeterNo=request.getParameter("MeterNumber");
		String MaxPwr=request.getParameter("MaxPower");
		
		UserRegisterBean b2=new UserRegisterBean();
		
		b2.setUsername(uname);
		b2.setPassword(upwd);
		b2.setEmail(email);
		b2.setArea(area);
		b2.setMobileNo(MobileNo);
		b2.setDate(date);
		b2.setAddress(address);
		b2.setMeterNumber(MeterNo);
		b2.setMaxPower(MaxPwr);
		
		HttpSession session=request.getSession();
		session.setAttribute("Username", uname);
		session.setAttribute("MeterNo", MeterNo);
		
		MyInterface m1=new DaoImplement();
		
		int i=m1.UserRegi(b2);
		
		System.out.println("reasxsbfjsd"+i);
		if(i==1)
		{
			response.sendRedirect("Successpage.jsp");
		}
		else
		{
			response.sendRedirect("Errorpage.jsp");
		}
		
	}

}
