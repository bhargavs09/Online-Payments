package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BeanClass.UserRegisterBean;
import com.Implementation.ImplementationClass;
import com.Interface.MyInterface;

/**
 * Servlet implementation class UserRegister
 */
@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegister() {
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
		
		
		String Accno=request.getParameter("Accno");
		String uname=request.getParameter("username");
		String upwd=request.getParameter("userpwd");
		String presentad=request.getParameter("presentaddress");
		String permanentad=request.getParameter("permanentaddress");
		String MobileNo=request.getParameter("mobileno");
		
		UserRegisterBean b3=new UserRegisterBean();
		
		b3.setAccno(Accno);
		b3.setUsername(uname);
		b3.setUserpwd(upwd);
		b3.setPresentaddress(presentad);
		b3.setPermanentaddress(permanentad);
		b3.setMobileno(MobileNo);
		
		MyInterface mi=new ImplementationClass();
		
		int status=mi.Userregi(b3);
		
		if(status==1)
		{
			response.sendRedirect("UserLogin.jsp");
		}
		else
		{
			response.sendRedirect("Errorpage.jsp");
		}
		
	}

}
