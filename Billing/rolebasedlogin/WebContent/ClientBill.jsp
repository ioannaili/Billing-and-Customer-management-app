<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="style2.css">
<head>
<meta charset="ISO-8859-1">
<script>
function validate()
{ 
     var username = document.form.username.value; 
  
     if (username==null || username=="")
     { 
     alert("Username cannot be blank"); 
     return false; 
     }
    
}
</script>
</head>
<body>
<form name="form" action="ClientBillServlet" method="post" onsubmit="return validate()" >
 
        <table align="center">
        <tr>
        <td>Enter client's username</td>
        <td><input type="text" name="username" /></td>
        </tr>    
        <td><input type="submit" value="Print Bill" style="background-color:#4CAF50"></input><input type="reset" value="Reset" style="background-color:#4CAF50"></input></td>
        </tr>
        </table>
        </form>
</body>
</html>