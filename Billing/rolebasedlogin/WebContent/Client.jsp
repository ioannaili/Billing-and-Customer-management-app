<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="style.css">
<head>
<meta charset="ISO-8859-1">
<title>Client Page</title>
</head>
<% //elegxos gia to session tou client. An den iparxei epistrefei sto Login page.
if((request.getSession(false).getAttribute("Client")== null) )
{
%>
<jsp:forward page="/Login.jsp"></jsp:forward>
<%} %>
<body>
  <center><h2>Client's Home</h2></center>
  <div class="welcome">
      Welcome <%=request.getAttribute("userName") %>
      </div>
 <div class="navbar">
  <a href="<%=request.getContextPath()%>/ViewBill.jsp"">View Bill</a>
  <a href="<%=request.getContextPath()%>/CallHistory.jsp">View Call History</a>
  <a href="<%=request.getContextPath()%>/BillPayment.jsp">Bill Payment</a> 
</div>
    <div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>
 
</body>
</html>