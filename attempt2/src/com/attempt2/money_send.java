package com.attempt2;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class money_send
 */
@WebServlet("/money_send")
public class money_send extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mon=request.getParameter("money_ad");
		String acc_receive=request.getParameter("account_ad");

		try{
			
			
			HttpSession session=request.getSession(false);  
	        int acc_sent=(int)session.getAttribute("account_no");  
	        int my_money=(int)session.getAttribute("money"); 
	        
	        
	        int money_send=Integer.valueOf(mon);
	        int acc_receive1=Integer.valueOf(acc_receive);
	        
	        if(my_money<money_send)
	        {
	        	
	        }
	        else
	        {
	        	
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	       
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","XE","sd");
			
			

			
			PreparedStatement st =conn.prepareStatement("select money FROM transation WHERE account_no=?");
			st.setInt(1, acc_receive1);
			
			
			ResultSet rs=st.executeQuery();
			
			
			rs.next();
			
			
			int cash=rs.getInt("money");
			
			 
			 cash=money_send+cash;
			 
			 
			 
			 String sql2="update transation set money=? where account_no=?";
				PreparedStatement st2 =conn.prepareStatement(sql2);
				st2.setInt(1, cash);
				st2.setInt(2, acc_receive1);
			
				ResultSet rs2=st2.executeQuery();
				
				
///////////////////////////////////////////////////////////////////////////////////////sender_account/////				
				
				int money=my_money-money_send;
				 String sql3="update transation set money=? where account_no=?";
					PreparedStatement st3 =conn.prepareStatement(sql3);
					st3.setInt(1, money);
					st3.setInt(2, acc_sent);
				
					ResultSet rs3=st3.executeQuery();		
				
			 
			 
			 
			 
			 
			 
			
			
			session.setAttribute("money", money);
			
		
		
			
		}
	
			
		}
			
			
			catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
		response.sendRedirect("send.jsp");
		
		}
		
		
	}

