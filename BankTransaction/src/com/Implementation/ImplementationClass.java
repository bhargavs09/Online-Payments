package com.Implementation;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.BeanClass.UserAccountBean;
import com.BeanClass.UserRegisterBean;
import com.DBConnection.DBConnection;
import com.Interface.MyInterface;

public class ImplementationClass implements MyInterface {
	
	Connection con;
	int result;
	
//	String token;
	 boolean status ;
	String path;
	
	String str;
	

	@Override
	public int AccountCreation(UserAccountBean bean) {


		  con=DBConnection.con();
          
			
			try{
				
				PreparedStatement ps=(PreparedStatement)con.prepareStatement("INSERT INTO banktransaction.accountdetails VALUES(?,?,?,?,?,?,?)");
				
				
				
				ps.setString(1, bean.getUsername());
				ps.setString(2, bean.getAccount());
				ps.setString(3, bean.getBalance());
				ps.setString(4, bean.getBranchcode());
				ps.setString(5, bean.getEmail());
				ps.setString(6, bean.getPhone());
				ps.setString(7, bean.getAddress());
				
				System.out.println(ps);
				
				result=ps.executeUpdate();
				
				System.out.println("Values successfully inserted");
				
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				
				return result;
	
	
	
	
	}


	
	@Override
	public ArrayList balanceCheck(UserAccountBean bean) {

		 con=DBConnection.con();
		  ArrayList<String> res = new ArrayList<>();
		  String address,balance,branchcode,email,mobile,userna,accoun;
			try
			{
				System.out.println("Comming");
			PreparedStatement ps=(PreparedStatement)con.prepareStatement("SELECT * FROM `banktransaction`.`accountdetails` where AccNo='"+bean.getAccount()+"'");	
			
			
			
			ResultSet ret=(ResultSet) ps.executeQuery();
			
			System.out.println(ret);
		while(ret.next())
		{
			System.out.println("while");
			 address=ret.getString(7);
			 balance=	ret.getString(3);
			 branchcode=ret.getString(4);
			 email=ret.getString(5);
			 mobile=ret.getString(6);
			 userna=ret.getString(1);
			 accoun=ret.getString(2);
			 
			 System.out.println("fininsh");
			 res.add(address);
				res.add(balance);
				res.add(branchcode);
				res.add(email);
				res.add(mobile);
				res.add(userna);
				res.add(accoun);
				System.out.println(res);
				
		}
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return res;
	}



	@Override
	public int Userregi(UserRegisterBean been)
	{
		
		
		 con=DBConnection.con();
         
			
			try{
				
				PreparedStatement ps=(PreparedStatement)con.prepareStatement("INSERT INTO banktransaction.userregistration VALUES(?,?,?,?,?,?)");
				System.out.println(ps);
				
				
			    ps.setString(1, been.getUsername());
				ps.setString(2, been.getUserpwd());
				ps.setString(3, been.getPresentaddress());
				ps.setString(4, been.getPermanentaddress());
				ps.setString(5, been.getMobileno());
				ps.setString(6, been.getAccno());
				
				
				result=ps.executeUpdate();
				
				System.out.println("Values successfully inserted");
				
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				
				return result;
	
	}



	@Override
	public boolean UserLogin(UserRegisterBean been1) {

		
		
		con=DBConnection.con();
        
		
		try{
			
			PreparedStatement ps=(PreparedStatement)con.prepareStatement("SELECT Userpwd,AccountNo FROM banktransaction.userregistration u where AccountNo='"+been1.getAccno()+"' and Userpwd='"+been1.getUserpwd()+"'");
			
			
			
			ResultSet rs=(ResultSet)ps.executeQuery();
			
			status=rs.next();
			System.out.println(ps);
			System.out.println("Values successfully inserted");
			
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return status;
	}

		
	}

