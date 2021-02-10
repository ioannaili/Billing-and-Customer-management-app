package com.seller;

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


@WebServlet("/ChangeClientProgramServlet")
public class ChangeClientProgramServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ChangeClientProgramServlet() {
        super();
        
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String program=request.getParameter("program");
		try
		{
			Connection con = DBConnection.createConnection();//kalesma ths klashs DBConnection gia th syndesh me th vash
	        Statement statement = con.createStatement();
	        PrintWriter out=response.getWriter();
	        ResultSet resultSet=statement.executeQuery("select username from clientprogram where username='"+username+"'");
	        if(resultSet.next()){
	        	 // out.println("The client exists" + "\n"); 
	        	}
	        else {
	        	out.println("The client does not exist" + "\n");
	        }
	        resultSet.close();
	        //elegxos an yparxei to programma
	        ResultSet resultSet2=statement.executeQuery("select program from programs where program='"+program+"'");
	       
	        if(resultSet2.next()) {
	        	//out.println("The program exists+ "\n");
	        }
	        else {
	        	out.println("The program does not exist");
	        }
	        resultSet2.close();
	       
		 statement.executeUpdate("update clientprogram set program='"+program+"' where username='"+username+"'");
		 statement.executeUpdate("update bill set program='"+program+"' where username='"+username+"'");
		 
	   
	    
		out.println("Program changed!");
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
		}
	}


