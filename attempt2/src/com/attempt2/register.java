package com.attempt2;

import java.io.IOException;
import java.util.*;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	
	 public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	   {
		 
		 
		   String name =req.getParameter("sname");
		   String email =req.getParameter("smail");
		   String gender =req.getParameter("smale");
		   String password=req.getParameter("pass");
		   String cnfrm_password =req.getParameter("cnrfmpass");
		   String city =req.getParameter("city");
		   String state =req.getParameter("state");
		   String birt =req.getParameter("birth_date");
		   
		    
		    
		    
		     // you will get date here

		

		   if(cnfrm_password.equals(password))
		   {   
			   
			   
		   try {
			    
			   
			   java.sql.Date birth = java.sql.Date.valueOf(birt);
			   
			   int account_no =0;
			 int check=25;  
		while(check!=0)   
			{
			   
			   int Min=1000000;
			    int Max=9999999;
			    
		    Random rn = new Random();
			   
			    account_no=Min + rn.nextInt(Max - Min + 1);
			   
			   
			   
			   login_bank log =new login_bank();
			   
			   if(log.check(account_no))
				{PrintWriter out=res.getWriter();
				  
			   		out.println("connectin /  " );
				}
			   else
			   {
				   check=0;
			   }
			}
			 
		PrintWriter out=res.getWriter();
		  
   		out.println("connectin /  " );
		   		 
			 
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","XE","sd");
			
			String sql="insert into register_bank values(?,?,?,?,?,?,?,?)";
			PreparedStatement st =conn.prepareStatement(sql);
			st.setString(1, name);
			st.setString(2, email);
			st.setString(3, gender);
			st.setString(4, city);
			st.setDate(5,  birth);
			st.setString(6, password);
			st.setString(7, cnfrm_password);
			st.setInt(8, account_no);
			ResultSet rs=st.executeQuery();
			
			
			
			String sql2="insert into transation values(?,?,?)";
			PreparedStatement st2 =conn.prepareStatement(sql2);
			st2.setString(1, email);
			st2.setInt(2, account_no);
			st2.setInt(3, 0);
			ResultSet rs2=st2.executeQuery();
			
			res.sendRedirect("login_bank.jsp");
			
			
//			
//			Statement statement =conn.createStatement();
//			int exec=statement.executeUpdate("insert into register_bank values('"+name+"',+'"+email+"',+'"+gender+"' , +'"+city+"',+'"+to_date(birth,"dd/MM/yyyy")+"',+ '"+password+"',+'"+cnfrm_password+"','"+account_no+"')");
//	   		
	   		
			
			  
	   		
	   		
				
			
	   		
	   		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  }
		   
		   else
		   {
			   PrintWriter out = res.getWriter();
			out.print("Password mismatch");
		   }
		
	   }
	}


