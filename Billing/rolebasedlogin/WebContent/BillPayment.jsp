<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="style.css">
<head>
<meta charset="ISO-8859-1">
<title>Bill Payment</title>
<script>
function validate()
{ 
     var cardnumber = document.form.cardnumber.value; 
     var name = document.form.name.value;
     var cvv = document.form.cvv.value;
     var expireMM= document.form.expireMM.value;
     var expireYY=document.form.expireYY.value;

     if (cardnumber==null || cardnumber=="")
     { 
     alert("Card number cannot be blank"); 
     return false; 
     }
     else if(name==null || name=="")
     { 
     alert("Name of owner cannot be blank"); 
     return false; 
     } 
     else if(cvv==null || cvv=="")
     { 
     alert("CVV of owner cannot be blank"); 
     return false; 
     } 
     else if(expireMM==null || expireMM=="")
     { 
     alert("Expiry month cannot be blank"); 
     return false; 
     } 
     else if(expireYY==null || expireYY=="")
     { 
     alert("Expiry year cannot be blank"); 
     return false; 
     }  
     else{
    	 alert("Successful Payment");
     }
}
function pay(){
	alert("Successful Payment!");
}
</script>
</head>
<body>
<center>
<form action="BillPaymentServlet" method="post">

<input type="submit" value="View my bill." style="background-color:#4CAF50">
</form>
</center>

<form name="form"  onsubmit="return validate()"  > 
 
        <table align="center">
        <tr>
        <td>Card Number</td>
        <td><input type="number" name="cardnumber" /></td>
        </tr>
        <tr>
        <td>Name of the owner</td>
        <td><input type="text" name="name" /></td>
        </tr>
        <tr>
        <td>Expiry Date</td>
         <td><select name='expireMM' id='expireMM'>
			    <option value=''>Month</option>
			    <option value='01'>January</option>
			    <option value='02'>February</option>
			    <option value='03'>March</option>
			    <option value='04'>April</option>
			    <option value='05'>May</option>
			    <option value='06'>June</option>
			    <option value='07'>July</option>
			    <option value='08'>August</option>
			    <option value='09'>September</option>
			    <option value='10'>October</option>
			    <option value='11'>November</option>
			    <option value='12'>December</option>
			</select> 
			<select name='expireYY' id='expireYY'>
			    <option value=''>Year</option>
			    <option value='10'>2020</option>
			    <option value='11'>2021</option>
			    <option value='12'>2022</option>
			</select> 
			</td>
        </tr>
         <tr>
        <td>CVV</td>
        <td><input type="number" name="cvv" maxlength="3" /></td>
        </tr>
        <td>
        	Price: 20,00 euro
        </td>
        <tr>
        <td></td>
        <td><input type="submit" value="Pay" style="background-color:#4CAF50" ></input><input type="reset" value="Reset" style="background-color:#4CAF50"></input></td>
       	
        </tr>
        </table>
        </form>
</body>
</html>