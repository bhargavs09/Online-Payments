package com.DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	private static Connection con=null;
	
	public static Connection con()
	{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banktransaction","root","root");
			
			System.out.println("DBConnected");
			
			
		    } catch (Exception e) {
			// TODO: handle exception
		    	e.printStackTrace();
		           }
		return con;
	}

}
