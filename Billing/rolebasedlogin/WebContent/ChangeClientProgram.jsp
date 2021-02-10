<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="style.css">
<head>
<meta charset="ISO-8859-1">
<title>Change Client's program</title>
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
     else if(program==null || program=="")
     { 
     alert("Program cannot be blank"); 
     return false; 
     } 
}
</script>
</head>
<body>
<form name="form" action="ChangeClientProgramServlet" method="post" onsubmit="return validate()">
 
        <table align="center">
        <tr>
        <td>Enter Client's username</td>
        <td><input type="text" name="username" /></td>
        </tr>
        <tr>
        <td>Enter new Program</td>
        <td><input type="text" name="program" /></td>
        </tr>
        <tr>
        <td></td>
        <td><input type="submit" value="Change" style="background-color:#4CAF50"></input><input type="reset" value="Reset" style="background-color:#4CAF50"></input></td>
        </tr>
        </table>
        </form>
</body>
</html>