<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script >
function check()
{
var v1=g.ano.value;
var v2=g.uname.value;
var v3=g.psw.value;
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
}
</script>

</head>
<body>
<center>
<form name="g" action="BalanceCode.jsp" method="post" onsubmit="return check()">
<center><h1 style="color: purple">SDFC BANK</h1></center>
<center><button><a href="Home.jsp">Home</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="newaccount.jsp">NewAccount</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="balance.jsp">Balance</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="deposit.jsp">Deposit</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="withdraw.jsp">Withdraw</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="transfer.jsp">Transfer</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="close.jsp">Close A/C</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="aboutus.jsp">AboutUs</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<p></p>
<h1 style="color: crimson;">BALANCE FORM</h1>
<table>
<tr>
 <td> Account No:</td>
 <td><input type="text" name="ano" placeholder="Enter account no"></td>
</tr>
<tr>
<td>Name:</td>
<td><input type="text" name="uname" placeholder="Enter holder name"></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="psw" placeholder="Enter password"></td>
</tr>
<tr>
<td><input type="submit" value="Submit"></td>
<td><input type="reset" value="Clear"></td>
</tr>
<tr>
<td></td>
</tr>
</table>
</center>
</form>
</center>
</body>
</html>