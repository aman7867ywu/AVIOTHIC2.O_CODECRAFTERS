package com.loginpage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/rgpage")

public class RegistrationForm extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
		
		PrintWriter out = response.getWriter(); 
	    
	    // Retrieve form data
	    String username = request.getParameter("name1");
	    String useremail = request.getParameter("email1");
	    String password = request.getParameter("pass1");
	    try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/rg_dm","root", "Mysql@123");
	    	PreparedStatement ps = con.prepareStatement("insert into rg_dm values(?,?,?)");
	    	ps.setString(1,username );
	    	ps.setString(2, useremail);
	    	ps.setString(3, password );
	    	
	    	int count = ps.executeUpdate();
	    	if(count>0) {
	    	response.setContentType("text/html");
	    	out.print("<h3>User registered successfully</h3>");
	    		 RequestDispatcher rd = request.getRequestDispatcher( " /login.jsp ");
	    		rd.include( request, response );
	    	}
	    	else {
	    		
	    		
	    		response.setContentType("text/html");
		    	out.print ("<h3> user  not register succesfull</h3>");
		    	RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
		    		rd.include( request, response );
	    	}
	    }
	    catch (Exception e) {
	    	e.printStackTrace();
	    	response.setContentType("text/html");
	    	out.print ("<h3> exception occurse "+ e.getMessage()+"</h3>");
	    		RequestDispatcher rd = request.getRequestDispatcher( " /login.jsp ");
	    		rd.include( request, response );
	    }

	   
	    }
	}
			

