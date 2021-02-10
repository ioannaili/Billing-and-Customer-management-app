<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="style.css">
<head>
<meta charset="ISO-8859-1">
<title>Alter Program</title>
<script>
function validate()
{ 
     var program = document.form.program.value; 
     
     if (program==null || program=="")
     { 
     alert("Program you want to alter cannot be blank"); 
     return false; 
     }
     
}
</script>
</head>
<body>
<form method="post" action="AlterProgramServlet" onsubmit="return validate()">
Enter program name you want to alter:<br>
<input type="text" name="program">
<br><br>

<h4>Enter alternations:</h4> <br><br>
Program name:<br>
<input type="text" name="programaltered">
<br><br>
Minutes:<br>
<input type="number" name="minutes">
<br>
Sms:<br>
<input type="number" name="sms">
<br>
MB:<br>
<input type="number" name="mb">
<br>


<input type="submit" value="submit" style="background-color:#4CAF50" >
</form>

</body>
</html>