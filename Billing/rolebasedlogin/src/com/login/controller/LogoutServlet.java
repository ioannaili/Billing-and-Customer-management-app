package com.login.controller;

import java.io.IOException;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;


public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	 public LogoutServlet() {
	        super();
	        
	    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session = request.getSession(false); //Fetch session object
		 
	        if(session!=null) 
	        {
	            session.invalidate(); //afairei ola ta attributes tou session
	            request.setAttribute("errMessage", "You have logged out successfully");
	            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Login.jsp");
	            requestDispatcher.forward(request, response);
	            System.out.println("Logged out");
	        }
	}


}
