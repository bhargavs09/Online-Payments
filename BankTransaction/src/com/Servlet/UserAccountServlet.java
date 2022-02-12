package com.Servlet;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BeanClass.UserAccountBean;
import com.Implementation.ImplementationClass;
import com.Interface.MyInterface;

/**
 * Servlet implementation class UserAccountServlet
 */
@WebServlet("/UserAccountServlet")
public class UserAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAccountServlet() {
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


		
		String creadit="607123991000";
		
		String words="1234567890";
		
		Random random=new Random();
		char a=words.charAt(random.nextInt(words.length()));
		char b=words.charAt(random.nextInt(words.length()));
		char c=words.charAt(random.nextInt(words.length()));
		char d=words.charAt(random.nextInt(words.length()));
		String creditnumber=""+creadit+a+b+c+d;
       System.out.println("iam creaditnumber===="+creditnumber);
		
		
		
	String username=request.getParameter("username");
	String balance=request.getParameter("balance");
	String branch=request.getParameter("branch");
	String email=request.getParameter("email");
	String phone=request.getParameter("mobile");
	String Address=request.getParameter("address");

	
	
				
	        UserAccountBean acc=new UserAccountBean();
	
			acc.setUsername(username);
			acc.setBalance(balance);
			acc.setBranchcode(branch);
			acc.setEmail(email);
			acc.setPhone(phone);
			acc.setAddress(Address);
			acc.setAccount(creditnumber);
		
			 
			MyInterface mi1=new ImplementationClass();
			
	        int status=mi1.AccountCreation(acc);
		if(status!=0)
		{
			
		
			response.sendRedirect("Success1.jsp");
		}else
		{
			response.sendRedirect("Errorpage.jsp");
		}
		
	}

}
