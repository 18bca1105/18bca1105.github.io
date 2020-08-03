package com.attempt2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class login_bank2 {


	String sql="select * from REGISTER_BANK where EMAIL=? and PASSWORD=?";
	
	public boolean  check(String email,String password)
	{
		
	
		
		 try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","XE","sd");
				
				PreparedStatement st =conn.prepareStatement(sql);
				st.setString(1, email);
				st.setString(2, password);
				
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

