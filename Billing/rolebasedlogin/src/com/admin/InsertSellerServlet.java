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


@WebServlet("/InsertSellerServlet")
public class InsertSellerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public InsertSellerServlet() {
        super();
        
    }



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String role="Seller";

		try
		{
			Connection con = DBConnection.createConnection();
	        Statement statement = con.createStatement();

	    statement.executeUpdate("insert into users(first_name,last_name,username,email,password,role)values('"+first_name+"','"+last_name+"','"+username+"','"+email+"','"+password+"','"+role+"')");
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


