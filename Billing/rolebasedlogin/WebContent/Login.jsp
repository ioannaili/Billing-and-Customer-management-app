<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="style.css">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<script>
function validate()
{ 
     var username = document.form.username.value; 
     var password = document.form.password.value;
 
     if (username==null || username=="")
     { 
     alert("Username cannot be blank"); 
     return false; 
     }
     else if(password==null || password=="")
     { 
     alert("Password cannot be blank"); 
     return false; 
     } 
}
</script>
</head>
<body>

<form name="form" action="LoginServlet" method="post" onsubmit="return validate()" class="no-background">
        <div class="imgcontainer">
        <img src="img_avatar2.png" alt="Avatar" class="avatar">
         </div>
     
		   
		 
        <table align="center">
        <div class="container">
        <tr>
        <td>Username</td>
        <td><input type="text" name="username" /></td>
        </tr>
        <tr>
        <td>Password</td>
        <td><input type="password" name="password" /></td>
        </tr>
        <tr>
        </div>
        <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span></td>
        </tr>
        <tr>
        <td></td>
        <td><input type="submit" value="Login" style="background-color:#4CAF50"></input><input type="reset" value="Reset" style="background-color:#4CAF50"></input></td>
        </tr>
        </table>
        </form>
</body>
</html>