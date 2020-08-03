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
 * Servlet implementation class money_add
 */
@WebServlet("/money_add")
public class money_add extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mon=request.getParameter("money_ad");
        String errorMessage="";
		try{
			
			
			HttpSession session=request.getSession(false);  
	        int account=(int)session.getAttribute("account_no");  
	        
	        
	        int money = Integer.valueOf(mon);
	        
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","XE","sd");
			
			

			
			PreparedStatement st =conn.prepareStatement("select money FROM transation WHERE account_no=?");
			st.setInt(1, account);
			
			
			ResultSet rs=st.executeQuery();
			
			
			rs.next();
			
			
			int cash=rs.getInt("money");
			
			 money=money+cash;
			 
			 
			 
			 String sql2="update transation set money=? where account_no=?";
				PreparedStatement st2 =conn.prepareStatement(sql2);
				st2.setInt(1, money);
				st2.setInt(2, account);
			
				ResultSet rs2=st2.executeQuery();
			 
			 
			 
			 PrintWriter out=response.getWriter();
		   		out.println(cash+" "+" connectin" +   +money);
			 
			 
			
			
			session.setAttribute("money", money);
			
		
		
			
		}
	
			
			
		
		
		catch (NumberFormatException e) {
			PrintWriter out =response.getWriter();
			out.println("Error"+ e.getMessage());
		        
			
		} 
			
			catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
		response.sendRedirect("add.jsp");
		
		}
		
		
	}

