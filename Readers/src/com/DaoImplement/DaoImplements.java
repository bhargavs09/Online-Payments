package com.DaoImplement;

import java.sql.Connection;
import java.sql.ResultSet;


import com.BeanClass.ReaderPowerBean;
import com.DBConnection.DBConnection;
import com.Interface.MyInterface;


import com.mysql.jdbc.PreparedStatement;

public class DaoImplements implements MyInterface{

	Connection con;
	int result;
	PreparedStatement ps2;
	ResultSet rs;
	PreparedStatement ps3;
	@Override
	public int Unitscal(ReaderPowerBean bean1) {
		// TODO Auto-generated method stub
		con=DBConnection.con();
		int i=0;
		int meterunit=8;
		
		try
		{
	    PreparedStatement ps1=(PreparedStatement) con.prepareStatement("SELECT * FROM smartgrid.readerdetails r where MeterNo='"+bean1.getMeterNo()+"' and month='"+bean1.getMonthupdate()+"'");
		
	    ResultSet rs=ps1.executeQuery();
	    if(!rs.next())
	    {
	    	
	    	
	    	
	    
	    	
	    	PreparedStatement ps2=(PreparedStatement) con.prepareStatement("INSERT INTO smartgrid.encryptreaderdetails VALUES(?,?,?,?,?,?)");
			
			ps2.setString(1, bean1.getMeterNo());
			System.out.println("sss...."+bean1.getMeterNo());
			ps2.setString(2, bean1.getEncdate());
			ps2.setString(3, bean1.getEncMonth());
			ps2.setString(4, bean1.getEncYear());
			ps2.setString(5, bean1.getEncUnits());
			ps2.setString(6, bean1.getEncUnits());
			
			i=ps2.executeUpdate();
	    
		PreparedStatement ps=(PreparedStatement) con.prepareStatement("INSERT INTO smartgrid.readerdetails VALUES(?,?,?,?,?,?)");
		
		ps.setString(1, bean1.getMeterNo());
		ps.setString(2, bean1.getDateupdate());
		ps.setString(3, bean1.getMonthupdate());
		ps.setString(4, bean1.getYearupdate());
		ps.setInt(5, Integer.parseInt(bean1.getUnits()));
		ps.setInt(6, Integer.parseInt(bean1.getUnits())*2*meterunit*2/2/2);
		
		i=ps.executeUpdate();
		
		
		
	    }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	
		return i;
		}
	
//}

	@Override
	public int maxpower(ReaderPowerBean b3) {
		String name=b3.getMeterNo();
		int maximumpower=0;
		
		con=DBConnection.con();
		try {
			

			ps2=(PreparedStatement) con.prepareStatement("SELECT UsedPower FROM smartgrid.readerdetails where MeterNo='"+name+"'");
			rs= ps2.executeQuery();
			while(rs.next()){
				maximumpower=rs.getInt(1);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return maximumpower;
	}



	@Override
	public int maxUpdate(ReaderPowerBean b3) {
		// TODO Auto-generated method stub
		int amount=b3.getAmount();
		int name=b3.getUsedpower();
		int i=0;
		con=DBConnection.con();
		try {
			ps3=(PreparedStatement)con.prepareStatement("UPDATE smartgrid.readerdetails r SET Amount="+amount+" where  MeterNo='"+name+"'");
			i=ps3.executeUpdate();
			System.out.println(i+"@@@@@@######%%%%%%");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	

	}



	@Override
	public int UpdateDetails(ReaderPowerBean bean1) {
		// TODO Auto-generated method stub
		con=DBConnection.con();
		int i=0;
		boolean status;
		try
		{
			
		
		PreparedStatement ps=(PreparedStatement) con.prepareStatement("INSERT INTO smartgrid.readerdetails VALUES(?,?,?,?)");
		
		ps.setString(1, bean1.getMeterNo());
		//ps.setString(2, bean1.getUnits());
		ps.setString(2, bean1.getDateupdate());
		ps.setInt(3, bean1.getUsedpower());
		ps.setInt(4, bean1.getAmount());
		
		i=ps.executeUpdate();
		
		
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return i;
	}
}
