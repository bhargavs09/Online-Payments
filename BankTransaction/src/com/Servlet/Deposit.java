package com.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Deposit
 */
@WebServlet("/Deposit")
public class Deposit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deposit() {
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


		
		String accountnumber=request.getParameter("acount");
		System.out.println("AccNo="+accountnumber);
		String amount=request.getParameter("money");
		
		int updatebal=Integer.parseInt(amount);
		
		int balance=0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banktransaction","root","root");
			
            PreparedStatement ps=con.prepareStatement("SELECT balance FROM `banktransaction`.`accountdetails` where AccNo=?");
			
			ps.setString(1,accountnumber );
            
            ResultSet rs=ps.executeQuery();
            
            while(rs.next())
            {
            	
            balance= rs.getInt(1);
            	
            	
            }
            int actualbal=balance;
            
            int totalbal=updatebal+actualbal;
            
            PreparedStatement ps1=con.prepareStatement("UPDATE banktransaction.accountdetails u SET balance=? where AccNo=?");
            ps1.setString(1,String.valueOf(totalbal) );
            ps1.setString(2, accountnumber);
            
   int status=ps1.executeUpdate();
   if(status!=0)
   {
	   response.sendRedirect("Success.jsp");
   }else
   {
	   response.sendRedirect("Errorpage.jsp");
   }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
     
		
	}

}
