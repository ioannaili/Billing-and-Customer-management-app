package com.seller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.util.DBConnection;
import java.sql.Connection;





import java.sql.Statement;

@WebServlet("/SellerServlet") //servlet eisagwghs client
public class SellerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public SellerServlet() {
        super();
       
    }


	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//pairnoume tis kataxwirseis apo to form tou InsertClient.jsp kai apothikeuontai se topikes metavlhtes
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String type="Client";
		String afm=request.getParameter("afm");
		String phonenumber=request.getParameter("phonenumber");
		
		try
		{
			Connection con = DBConnection.createConnection();//kalesma ths klashs DBConnection gia th syndesh me th vash
	        Statement statement = con.createStatement();
	     //perasma ton stoixeion stin vasi
		statement.executeUpdate("insert into clients(username,afm,phonenumber)values('"+username+"','"+afm+"','"+phonenumber+"')");
	    statement.executeUpdate("insert into users(first_name,last_name,username,email,password,role)values('"+first_name+"','"+last_name+"','"+username+"','"+email+"','"+password+"','"+type+"')");
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






	



