package com.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BeanClass.UserAccountBean;
import com.Implementation.ImplementationClass;
import com.Interface.MyInterface;


/**
 * Servlet implementation class CheckBalance
 */
@WebServlet("/CheckBalance")
public class CheckBalance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckBalance() {
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


		

		String account=request.getParameter("account");
		
		UserAccountBean bean=new UserAccountBean();
		
		bean.setAccount(account);
		
		MyInterface mi=new ImplementationClass();
		
ArrayList<String> status=(ArrayList<String>) mi.balanceCheck(bean);

Iterator< String > it=status.iterator();
 

while(it.hasNext())
{
	
	String address=it.next();
String balance=	it.next();
String branchcode=it.next();
String email=it.next();
String mobile=it.next();
String userna=it.next();
String accoun=it.next();

	HttpSession session=request.getSession();
	session.setAttribute("bal", balance);
	
}
if(status.size()!=0)
{
	response.sendRedirect("ShowBalance.jsp");
}else
{
	response.sendRedirect("Errorpage.jsp");
}
		
		
		
		
		
	}

}
