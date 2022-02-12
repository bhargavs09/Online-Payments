package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BeanClass.UserRegisterBean;
import com.Implementation.ImplementationClass;
import com.Interface.MyInterface;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
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
		
		String uaccno=request.getParameter("Accno");
		String upwd=request.getParameter("userpwd");
		
		UserRegisterBean b4=new UserRegisterBean();
		
		b4.setAccno(uaccno);
		b4.setUserpwd(upwd);
		
		
		HttpSession session=request.getSession();
		
		session.setAttribute("accno", uaccno);
		
		MyInterface mi=new ImplementationClass();
		
		boolean status=mi.UserLogin(b4);
		
		if(status==true)
			
		{
			response.sendRedirect("User.jsp");
		}
		else
		{
			response.sendRedirect("Errorpage.jsp");
					
		}
		
	}

}
