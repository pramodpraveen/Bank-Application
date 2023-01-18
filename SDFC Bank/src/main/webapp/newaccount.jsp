<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

h1{
border: 2px solid black;
text-align:center;
width:50%;

}
form{
align:center;
border: 2px solid black;
width:50%;
background: linear-gradient(45deg, pink, yellowgreen);
}
</style>
<script >
function check()
{
var v1=f.acno.value;
var v2=f.uname.value;
var v3=f.pswd.value;
var v4=f.cpswd.value;
var v5=f.amt.value;
var v6=f.addr.value;
var v7=f.mob.value;
if(v1=="")
{
alert("please insert account number");
return false;
}

if(v2=="")
{
alert("please insert user name");
return false;
}

if(v3=="")
{
alert("please insert password");
return false;
}

if(v4=="")
{
alert("please insert confirm password");
return false;
}

if(v5=="")
{
alert("please insert amount");
return false;
}

if(v6=="")
{
alert("please insert user address");
return false;
}

if(v7=="")
{
alert("please insert user mobile number");
return false;
}
	}
</script>
</head>
<body>
<center>
<form name="f" action="NewAccountCode.jsp" method="post" onsubmit="return check()">
<center><h1 style="color: red">SDFC BANK</h1></center>
<center><button><a href="Home.jsp">Home</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="newaccount.jsp">NewAccount</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="balance.jsp">Balance</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="deposit.jsp">Deposit</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="withdraw.jsp">Withdraw</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="transfer.jsp">Transfer</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="close.jsp">Close A/C</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="aboutus.jsp">AboutUs</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<p></p>
</center>
<table>
 <h1>OPEN ACCOUNT FORM</h1>
 <!----Account Number---->
<tr>
<td> Account Number:</td>
<td> <input type="number" name="acno" placeholder="Enter Account Number"></td>
</tr>
<!----name---->
<tr>
<td> Name:</td>
<td><input type="text" name="uname" placeholder="Enter name"> </td>
</tr>
<!----Password---->
<tr>
<td>Password:</td>
<td><input type="password" name="pswd" placeholder="Enter Password"></td>
</tr>
<!----Confirm_Password---->
<tr>
<td>Conirm_Password:</td>
<td><input type="password" name="cpswd" placeholder="Enter Confirm Password"></td>
</tr>
<!----Amount---->
<tr>
<td>Amount:</td>
<td>
<input type="number" name="amt" placeholder="Enter Amount"></td>
</tr>
<!-----Address------>
<tr>
<td>Address:</td>
<td><textarea  cols="" rows="" name="addr" placeholder="Enter address"></textarea></td>
</tr>
<!----Mobile Number---->
<tr>
<td>Mobile Number:</td>
<td><input type="text" name="mob" placeholder="Enter Mobile Number"></td>
</tr>
<tr>
<td><input type="submit" value="Register"></td>
<td><input type="reset" value="Clear"></td>
</tr>
</table></center>
</form>
</body>
</html>