package com.attempt2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.Statement;
public class login_bank {


	String sql="select * from REGISTER_BANK where account_no=?";
	
	public boolean  check(int data)
	{
		
	
		
		 try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","XE","sd");
				
				PreparedStatement st =conn.prepareStatement(sql);
				st.setInt(1, data);
				
				
				ResultSet rs=st.executeQuery();
				
				if(rs.next())
				{
					return true;
				}
		 }
		 catch (Exception e)
		 {
			 e.printStackTrace();
		 }
		   		
		return false;
	}

}

