<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="style.css">
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>


<% //elegxos gia to session tou admin. An den iparxei epistrefei sto login page
if((request.getSession(false).getAttribute("Admin")== null) )
{
%>
<jsp:forward page="/Login.jsp"></jsp:forward>
<%} %>
<body>
<center><h2>Admin's Home</h2></center>
 <div class="welcome" style="backround-color:black">
Welcome <%=request.getAttribute("userName") %>
</div>
<div class="navbar">
  <a href="<%=request.getContextPath()%>/CreateProgram.jsp">Create New Program</a>
  <a href="<%=request.getContextPath()%>/InsertSeller.jsp">Insert New Seller</a>
  <a href="<%=request.getContextPath()%>/AlterProgram.jsp">Alter Program Characteristics</a>
</div>
 
<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>
</body>
</html>