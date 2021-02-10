package com.seller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.Connection;
import java.sql.Statement;

import com.login.util.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ViewProgramsServlet")
public class ViewProgramsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ViewProgramsServlet() {
        super();
        
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out=response.getWriter();
		
		out.println("<table border='1'><tr><td>program</td><td>minutes</td><td>sms</td><td>mb<td></tr>");
		try
		    {
		       
			   response.setContentType("text/html");
		       Connection con = DBConnection.createConnection(); //Fetch database connection object
		       Statement statement = con.createStatement();
		      
		        ResultSet rs=statement.executeQuery("select * from programs;");
		       
		       //emfanisi stoixeion ton diathesimon programmaton
		        while(rs.next()) {
		        	out.print("<tr><td>");
		        	out.println(rs.getString(1));
		        	out.print("</td>");
		        	out.print("<td>");
		        	out.println(rs.getInt(2));
		        	out.print("</td>");
	
		        	out.print("<td>");
		        	out.println(rs.getInt(3));
		        	out.print("</td>");
		        	out.print("<td>");
		        	out.println(rs.getInt(4));
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
