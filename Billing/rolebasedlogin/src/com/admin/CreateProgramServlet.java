package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.util.DBConnection;


@WebServlet("/CreateProgramServlet")
public class CreateProgramServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CreateProgramServlet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String program=request.getParameter("program");
		String minutes=request.getParameter("minutes");
		String sms=request.getParameter("sms");
		String mb=request.getParameter("mb");
		try
		{
			Connection con = DBConnection.createConnection();
	        Statement statement = con.createStatement();
	   
	    statement.executeUpdate("insert into programs(program,minutes,sms,mb)values('"+program+"','"+minutes+"','"+sms+"','"+mb+"')");
	    PrintWriter out=response.getWriter();
		out.println("Data is successfully inserted!");
		
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
		}
	}


