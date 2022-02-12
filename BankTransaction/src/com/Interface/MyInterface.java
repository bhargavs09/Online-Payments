package com.Interface;

import java.util.ArrayList;

import com.BeanClass.UserAccountBean;
import com.BeanClass.UserRegisterBean;

public interface MyInterface {
	
	public int AccountCreation(UserAccountBean bean);
	
	public ArrayList<String> balanceCheck(UserAccountBean bean);
	
	
	public int Userregi(UserRegisterBean been);
	public boolean UserLogin(UserRegisterBean been1);

}
