package com.attempt2;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class login_serv_bank
 */
@WebServlet("/login_serv_bank")
public class login_serv_bank extends HttpServlet {
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("username");
		String password=request.getParameter("pass");
		login_bank2 lo =new login_bank2();
		
		PrintWriter out=response.getWriter();
   		out.println("connectin   " +email);
		
		
	 if(lo.check(email,password))
		{
			HttpSession session =request.getSession();
		session.setAttribute("email",email);
		
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","XE","sd");
			
			

			
			PreparedStatement st =conn.prepareStatement("select  account_no,money FROM transation WHERE email=?");
			st.setString(1, email);
			
			
			ResultSet rs=st.executeQuery();
			
			
			rs.next();
			
			int doss=rs.getInt("account_no");
			int money=rs.getInt("money");
			
			
			session.setAttribute("money", money);
			session.setAttribute("account_no", doss);
		
		
			
		}
	
			
			
			
			
			catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
		response.sendRedirect("Welcome.jsp");
		
		}
		else
		{
			response.sendRedirect("Welcome.jsp");
			
			
		}
		
	}

}

