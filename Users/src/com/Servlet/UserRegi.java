package com.Servlet;

import java.io.IOException;
import java.util.Random;

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
 * Servlet implementation class UserRegi
 */
@WebServlet("/UserRegi")
public class UserRegi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegi() {
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
		
		
		String umeterNo=request.getParameter("umeterno");	
        String uname=request.getParameter("uname");	
		String upwd=request.getParameter("password");
		String uemail=request.getParameter("uemail");	
		String umblNo=request.getParameter("umobileNo");
		String uaddress=request.getParameter("Address");	
//		String USkey=request.getParameter("Uskey");	
		
		HttpSession session=request.getSession();
		
		
		UserRegister be=new UserRegister();
		
		be.setUname(uname);
		be.setUpwrd(upwd);
		be.setUemail(uemail);
		be.setUmobileNo(umblNo);
		be.setUaddress(uaddress);
		be.setUmeternumber(umeterNo);
		  Random rm=new Random();
			
          int key=rm.nextInt(100000);
		 String privateKey=""+key;
		 
		 
		 be.setSkey(privateKey);
		
		 session.setAttribute("UMeterNo", umeterNo);
		

		
		MyInterface mi=new DaoImpementsClass();
		
		int i=mi.UserRegis(be);
		
		if(i==1)
		{
			response.sendRedirect("UserLogin.jsp");
			
		}
		else
		{
			response.sendRedirect("Errorpage.jsp");
		}
		
	}

}
