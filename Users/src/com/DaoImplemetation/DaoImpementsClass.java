package com.DaoImplemetation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.BeanClass.UserRegister;
import com.DataBaseConnection.DBConnection;
import com.Interface.MyInterface;

public class DaoImpementsClass implements MyInterface {
	
	Connection con;
	int result;
	int i=0;
	ResultSet rs;
	boolean status;
	@Override
	public int UserRegis(UserRegister bean) {
		// TODO Auto-generated method stub
		con=DBConnection.con();
		
		try
		{
			
			PreparedStatement ps=con.prepareStatement("INSERT INTO smartgrid.userregistraion VALUES(?,?,?,?,?,?,?)");
			
			ps.setString(1, bean.getUname());
			ps.setString(2, bean.getUpwrd());
			ps.setString(3, bean.getUemail());
			ps.setString(4, bean.getUmobileNo());
			ps.setString(5, bean.getUaddress());
			ps.setString(6, bean.getSkey());
			ps.setString(7, bean.getUmeternumber());
			
		i=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return i;
	}

	@Override
	public boolean UseLogin(UserRegister bean1) {
		//		boolean status=false;
		con=DBConnection.con();
		try
		{
			PreparedStatement ps=con.prepareStatement("SELECT UMeterNo,Upwd FROM smartgrid.userregistraion u where UMeterNo='"+bean1.getUmeternumber()+"' and Upwd='"+bean1.getUpwrd()+"'");
			System.out.println(ps);
			
			
			ResultSet rs=ps.executeQuery();
			
			status =rs.next();
			
			System.out.println("Login successfully inserted");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return status;
	}

}
