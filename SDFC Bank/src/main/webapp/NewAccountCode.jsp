<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int accountnum=Integer.parseInt(request.getParameter("acno"));
	String name=request.getParameter("uname");
	String password=request.getParameter("pswd");
	String confpassword=request.getParameter("cpswd");
	double amount=Double.parseDouble(request.getParameter("amt"));
	String address=request.getParameter("addr");
	long mobileno=Long.parseLong(request.getParameter("mob"));
	try
	{
		if(password.equals(confpassword)){
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");
		PreparedStatement ps=con.prepareStatement("insert into sdfc values(?,?,?,?,?,?,'active')");
		ps.setInt(1,accountnum);
		ps.setString(2,name);
		ps.setString(3,password);
		ps.setDouble(4,amount);
		ps.setString(5,address);
		ps.setLong(6,mobileno);
		int i=ps.executeUpdate();
		out.print(i+"New Record Inserted Successfully....!");
		con.close();
		}
		else{
			out.print("PASSWORD MUST MATCH");
		}
		
		}
	catch(Exception ex)
	{
		out.print(ex);
	}
%>
</body>
</html>