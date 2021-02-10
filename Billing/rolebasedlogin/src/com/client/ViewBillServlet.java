package com.client;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.util.DBConnection;
import com.login.controller.*;;


@WebServlet("/ViewBillServlet")
public class ViewBillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ViewBillServlet() {
        super();
        
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out=response.getWriter();
		
		out.println("<table border='1'><tr><td>program</td><td>username</td><td>numberofcalls</td><td>price<td></tr>");
		try
		    {
			 HttpSession session = request.getSession();
			
			   String userName=(String) session.getAttribute("userName");
			   
			   response.setContentType("text/html");
		       Connection con = DBConnection.createConnection(); //Fetch database connection object
		       Statement statement = con.createStatement();
		      
		        
			   ResultSet rs=statement.executeQuery("select * from bill where username='"+userName+"'");
		       
		       //emfanisi stoixeion ton diathesimon programmaton
		        while(rs.next()) {
		        	out.print("<tr><td>");
		        	out.println(rs.getString(1));
		        	out.print("</td>");
		        	out.print("<td>");
		        	out.println(rs.getString(2));
		        	out.print("</td>");
	
		        	out.print("<td>");
		        	out.println(rs.getInt(3));
		        	out.print("</td>");
		        	out.print("<td>");
		        	out.println(rs.getString(4));
		        	out.print("</td>");
		        	out.print("</tr>");
		        	
		        }
		       
	} catch(SQLException e)
		
           {
              e.printStackTrace();
           }
		out.print("</table>");
          

}

	}


