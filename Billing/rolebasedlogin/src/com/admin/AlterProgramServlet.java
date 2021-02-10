package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.util.DBConnection;


@WebServlet("/AlterProgramServlet")
public class AlterProgramServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public AlterProgramServlet() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String program=request.getParameter("program");
		String programaltered=request.getParameter("programaltered");
		String minutes=request.getParameter("minutes");
		String sms=request.getParameter("sms");
		String mb=request.getParameter("mb");
		

		try
		{
		Connection con = DBConnection.createConnection();//kalesma ths klashs DBConnection gia th syndesh me th vash
	    Statement statement = con.createStatement();
	    ResultSet resultSet=statement.executeQuery("select program from programs where program='"+program+"'");
        if(resultSet.next()){
        	 // out.println("The client exists" + "\n"); 
        	}
        else {
        	out.println("The program does not exist" + "\n");
        }
	    statement.executeUpdate("update programs set program='"+programaltered+"',minutes='"+minutes+"',mb='"+mb+"',sms='"+sms+"' where program='"+program+"'");
	   
		out.println("Data is successfully altered!");
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
		}
	}


