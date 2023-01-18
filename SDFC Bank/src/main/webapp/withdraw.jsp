<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>withdraw</title>
<style>
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
var v1=f.ano.value;
var v2=f.uname.value;
var v3=f.psw.value;
var v4=f.amt.value;
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
alert("please insert amount");
return false;
}
}
</script>
</head>
<body>
<center>
<form action="WithdrawCode.jsp" method="post" name="f" onsubmit="return check()">
<center><h1 style="color: purple">SDFC BANK</h1></center>
<center><button><a href="Home.jsp">Home</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="newaccount.jsp">NewAccount</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="balance.jsp">Balance</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="deposit.jsp">Deposit</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="withdraw.jsp">Withdraw</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="transfer.jsp">Transfer</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="close.jsp">Close A/C</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="aboutus.jsp">AboutUs</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
 <center>
 <P></P>
<h1 style="color: crimson;">WITHDRAW FORM</h1>
<table>
<tr>
<td>Account No: </td>
<td><input type="text" name="ano" placeholder="Enter account no"></td>
</tr>
<tr>
<td>Name: </td>
<td><input type="text" name="uname" placeholder="Enter account name"></td>
</tr>
<tr>
<td>Password: </td>
<td><input type="text" name="psw" placeholder="Enter password"></td>
</tr>
<tr>
<td>Amount: </td>

<td><input type="text" name="amt" placeholder="Enter amount"></td>
</tr>
<tr>
<td><input type="submit" value="Submit" ></td>
<td><input type="reset" value="Clear"></td>
</tr>
</table>
</form>
</center>
</body>
</html>