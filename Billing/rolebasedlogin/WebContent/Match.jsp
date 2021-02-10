<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="style.css">
<head>
<meta charset="ISO-8859-1">
<title>Match client to program</title>
<script>
function validate()
{ 
     var username = document.form.username.value; 
     var program = document.form.program.value;
 
     if (username==null || username=="")
     { 
     alert("Username cannot be blank"); 
     return false; 
     }
     else if(password==null || password=="")
     { 
     alert("program cannot be blank"); 
     return false; 
     } 
}
</script>
</head>
<body>
<form method="post" action="MatchServlet" onsubmit="return validate()">
Username:<br>
<input type="text" name="username">
<br>
Program:<br>
<input type="text" name="program">
<br><br>
<input type="submit" value="submit" style="background-color:#4CAF50" >
</form>
</body>
</html>