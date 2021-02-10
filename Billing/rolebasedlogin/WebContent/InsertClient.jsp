<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   

<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="style.css">
<head>
<meta charset="ISO-8859-1">
<title>Insert Client</title><!--  dimiourgia kainourgiou client -->
<script>
function validate()
{ 
	var first_name = document.form.first_name.value; 
	var last_name = document.form.last_name.value; 
	var email = document.form.email.value; 
     var username = document.form.username.value; 
     var password = document.form.password.value;
     var afm = document.form.afm.value;
     var phonenumber = document.form.phonenumber.value;
 
     if (first_name==null || first_name=="")
     { 
     alert("First name cannot be blank"); 
     return false; 
     }
     if (last_name==null || last_name=="")
     { 
     alert("Last name cannot be blank"); 
     return false; 
     }
     
     else if (username==null || username=="")
     { 
     alert("Username cannot be blank"); 
     return false; 
     }
     else if (email==null || email=="")
     { 
     alert("Email cannot be blank"); 
     return false; 
     }
     else if(password==null || password=="")
     { 
     alert("Password cannot be blank"); 
     return false; 
     } 
     else if(afm==null || afm=="")
     { 
     alert("Afm cannot be blank"); 
     return false; 
     } 
     else if(phonenumber==null || phonenumber=="")
     { 
     alert("Phone number cannot be blank"); 
     return false; 
     }
}
</script>
</head>
<body>
<form method="post" action="SellerServlet" onsubmit="return validate()">
First name:<br>
<input type="text" name="first_name">
<br>
Last name:<br>
<input type="text" name="last_name">
<br>
Username:<br>
<input type="text" name="username">
<br>
Email:<br>
<input type="email" name="email">
<br>
Password:<br>
<input type="password" name="password">
<br>
Afm:<br>
<input type="number" name="afm">
<br>
Phone Number:<br>
<input type="tel" name="phonenumber">
<br>
<input type="submit" value="submit" style="background-color:#4CAF50" >
</form>



</body>
</html>