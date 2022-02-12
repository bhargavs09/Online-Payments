package com.Implementation;

import java.sql.*;
import java.sql.PreparedStatement;

import com.BeanClass.UserRegisterBean;
import com.DataBaseConnection.DBConnection;
import com.Interface.MyInterface;


public class DaoImplement implements MyInterface  {
	
	Connection con;
	int result;
//	String userid;

	@Override
	public int UserRegi(UserRegisterBean bean1) {
		// TODO Auto-generated method stub
		
		con=DBConnection.con();
		int i=0;
		ResultSet rs=null;
		
		String userid="USER10";
		String count="";
		
		
		try
		{
			PreparedStatement ps1=(PreparedStatement)con.prepareStatement("SELECT COUNT(username) FROM smartgrid.adminrecords");
			
			ResultSet rs1 =ps1.executeQuery();
			
			while(rs1.next())
			{
				count =rs1.getString(1);
				
				System.out.println("count ="+count);
			}
			
			PreparedStatement ps=con.prepareStatement("INSERT INTO smartgrid.adminrecords VALUES(?,?,?,?,?,?,?,?,?,?)");
			
			 
			ps.setString(1, userid+count);
				
			ps.setString(2, bean1.getUsername());
			ps.setString(3, bean1.getPassword());
			ps.setString(4, bean1.getEmail());
			ps.setString(5, bean1.getArea());
			ps.setString(6, bean1.getDate());
			ps.setString(7, bean1.getMobileNo());
			ps.setString(8, bean1.getAddress());
			ps.setString(9, bean1.getMeterNumber());
			ps.setString(10, bean1.getMaxPower());
//			ps.setInt(11, bean1.getUsedpower());
//			ps.setInt(12, bean1.getAmount());
//			
			
			 i=ps.executeUpdate();
			 
			System.out.println("Values successfully inserted");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
		
	}

}
