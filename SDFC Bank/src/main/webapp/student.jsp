<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
	background-color:Maroon; 
	padding: 20px;
  }
 td{
 	color: white;
 }
table {
	padding: 20px;
}
</style>
</head>
<body>
<form action="StudentCode.jsp" method="post">
<center><table>
<h1 style="color: white">STUDENT_MANAGMENT_SYSTEM</h1>

<tr>
<td>Student Id:</td>
<td><input type="text" name="sid" placeholder="Enter Student Number"></td>
</tr>
<tr>
<td>Student Name:</td>
<td><input type="text" name="sname" placeholder="Enter Student Name"></td>
</tr>
<tr>
<td>English:</td>
<td><input type="number" name="eng" placeholder="Enter English marks "></td>
</tr>
<tr>
<td>Computer:</td>
<td><input type="number" name="comp" placeholder="Enter Computer marks "></td>
</tr>
<tr>
<td>Maths:</td>
<td><input type="number" name="maths" placeholder="Enter Maths marks "></td>
</tr>
<tr>
<td>Physics:</td>
<td><input type="number" name="phy" placeholder="Enter Physics marks "></td>
</tr>
<tr>
<td>Chemistry:</td>
<td><input type="number" name="chem" placeholder="Enter Chemistry marks "></td>
</tr>
<tr>
<td><input type="submit"  name="submit" value="save">&nbsp;&nbsp;&nbsp;
<input type="submit"  name="submit" value="update">&nbsp;&nbsp;&nbsp;</td>
<td><input type="submit" name="submit" value="delete">&nbsp;&nbsp;&nbsp;
<input type="submit"  name="submit" value="showrecords"></td>
</tr>
</table></center>
</form>
&nbsp;&nbsp;&nbsp;&nbsp;<button><a href="student.jsp">Home</a></button>
</body>
</html>