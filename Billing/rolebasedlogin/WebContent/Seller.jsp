<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="style.css">
<head>
<meta charset="ISO-8859-1">
<title>Seller</title>
</head>
 


<% //elegxos ean iparxei to session tou seller.Anarxei epistrefei sto Login page
if((request.getSession(false).getAttribute("Seller")== null) )
{
%>
<jsp:forward page="/Login.jsp"></jsp:forward>
<%} %>
<body>
<center><h2>Seller's Home</h2></center>
<div class="welcome">
 
Welcome <%=request.getAttribute("userName") %>
</div>
<div class="navbar">
  <a href="<%=request.getContextPath()%>/ViewPrograms.jsp">View Available Programs</a>
  <a href="<%=request.getContextPath()%>/InsertClient.jsp">Insert New Client</a>
  <a href="<%=request.getContextPath()%>/Match.jsp">Match a client to a program</a>
  <a href="<%=request.getContextPath()%>/ClientBill.jsp">Print client's bill</a>
  <a href="<%=request.getContextPath()%>/ChangeClientProgram.jsp">Change client's program</a>
</div>

<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>

</body>
</html>