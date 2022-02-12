package com.DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	 static Connection con;
	public static Connection con()
	{
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smartgrid","root","root");
		
		System.out.println("DBConnected");
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	{
		return con;
		
	}
	
	}
}
