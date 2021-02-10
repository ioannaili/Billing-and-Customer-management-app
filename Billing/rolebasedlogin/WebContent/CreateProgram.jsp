<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="style.css">
<head>
<meta charset="ISO-8859-1">
<title>Create a program</title>
<script>
function validate()
{ 
     var program = document.form.program.value; 
     var minutes = document.form.minutes.value;
     var sms = document.form.sms.value;
     var mb = document.form.mb.value;
 
     if (username==null || username=="")
     { 
     alert("Program cannot be blank"); 
     return false; 
     }
     else if(minutes==null || minutes=="")
     { 
     alert("Minutes cannot be blank"); 
     return false; 
     } 
     else if(sms==null || sms=="")
     { 
     alert("Sms cannot be blank"); 
     return false; 
     } 
     else if(mb==null || mb=="")
     { 
     alert("MB cannot be blank"); 
     return false; 
     } 
}
</script>
</head>
<body>
<form method="post" action="CreateProgramServlet" onsubmit="return validate()">
Program name:<br>
<input type="text" name="program">
<br>
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