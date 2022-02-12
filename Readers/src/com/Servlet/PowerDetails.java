package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.BeanClass.ReaderPowerBean;
import com.DaoImplement.DaoImplements;

import com.Interface.MyInterface;

/**
 * Servlet implementation class PowerDetails
 */
@WebServlet("/PowerDetails")
public class PowerDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PowerDetails() {
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
		
		try {
		
		
		
		String MeterNo=request.getParameter("meter no");
		String dateupdate=request.getParameter("update");
		String monthupdate=request.getParameter("umonth");
		String yearupdate=request.getParameter("uyear");
		String units=request.getParameter("UsedPower");
		
		System.out.println("hiiiii"+units);
		
		
			String EncMeterNo=encryptdata.encrypt(MeterNo);
			System.out.println("sssss..."+MeterNo);
			
			String Encdate=encryptdata.encrypt(dateupdate);
			String EncMonth=encryptdata.encrypt(monthupdate);
			String EncYear=encryptdata.encrypt(yearupdate);
			String EncUnits=encryptdata.encrypt(units);
		
			
			
			System.out.println("EncMeterNo ="+EncMeterNo);
			System.out.println("EncMeterNo ="+Encdate);
			
			 ReaderPowerBean bee1=new ReaderPowerBean();
			 
			bee1.setMeterNo(MeterNo);
			bee1.setEncdate(Encdate);
			bee1.setEncMonth(EncMonth);
			bee1.setEncYear(EncYear);
			bee1.setEncUnits(EncUnits);
		    bee1.setDateupdate(dateupdate);
			bee1.setMonthupdate(monthupdate);
			bee1.setYearupdate(yearupdate);
			bee1.setUnits(units);
			
		MyInterface mi=new DaoImplements();
		
		int result=mi.Unitscal(bee1);
		
		
		if(result==1)
		{
			response.sendRedirect("SuccessPage.jsp");
		}
		
		else
		{
			response.sendRedirect("eErrorpage.jsp");
		}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
