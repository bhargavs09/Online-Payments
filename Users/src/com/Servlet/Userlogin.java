package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BeanClass.UserRegister;
import com.DaoImplemetation.DaoImpementsClass;
import com.Interface.MyInterface;

/**
 * Servlet implementation class Userlogin
 */
@WebServlet("/Userlogin")
public class Userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userlogin() {
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
		
		
		
		String UMeterNo=request.getParameter("umeterno");
		
		String upwd=request.getParameter("password");
		
		HttpSession session=request.getSession();
		
		
		UserRegister be1=new UserRegister();
		  
		be1.setUmeternumber(UMeterNo);
		be1.setUpwrd(upwd);
		
		session.setAttribute("Umeternumber", UMeterNo);
		
		
		MyInterface mii=new DaoImpementsClass();
		boolean  status=mii.UseLogin(be1);
		
		
		System.out.println("status is==="+status);
		 
		if(status==true)
		{
//			response.sendRedirect("UserWellcomePage.jsp");
			response.sendRedirect("Decriptdata.jsp");
		}
		else
		{
			response.sendRedirect("Errorpage.jsp");
		}
		
	}

}
