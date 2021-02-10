package com.seller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.util.DBConnection;


@WebServlet("/MatchServlet")
public class MatchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MatchServlet() {
        super();
        
    }

	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String program =request.getParameter("program");
		
		try
		{
			Connection con = DBConnection.createConnection();
	        Statement statement = con.createStatement();
	        PrintWriter out=response.getWriter();
	        //elegxos an yparxei o client 
	        ResultSet resultSet=statement.executeQuery("select username from users where username='"+username+"'");
	        if(resultSet.next()){
	        	//  out.println("The client exists" + "\n"); 
	        	}
	        else {
	        	out.println("The client does not exist" + "\n");
	        }
	        resultSet.close();
	        //elegxos an yparxei to programma
	        ResultSet resultSet2=statement.executeQuery("select program from programs where program='"+program+"'");
	       
	        if(resultSet2.next()) {
	        	//out.println("The program exists");
	        }
	        else {
	        	out.println("The program does not exist");
	        }
	        resultSet2.close();
	    statement.executeUpdate("insert into clientprogram(username,program)values('"+username+"','"+program+"')");
	  
		out.println("Data is successfully inserted!");
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
		}
	}


