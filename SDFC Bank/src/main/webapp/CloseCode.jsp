<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int accountnum=Integer.parseInt(request.getParameter("ano"));
String name=request.getParameter("name");
String password=request.getParameter("pswd");
try
   {
      Class.forName("oracle.jdbc.driver.OracleDriver");
	  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");
	  PreparedStatement ps=con.prepareStatement("select *from sdfc where accountnum=? and name=? and password=?");
	  ps.setInt(1,accountnum);
	  ps.setString(2,name);
	  ps.setString(3,password);
	  ResultSet rs=ps.executeQuery();
	  String status="";
	  if (rs.next()) 
		{
	 		status=rs.getString(7);
		out.print(status);
		
		
	PreparedStatement us=con.prepareStatement("update sdfc set status='inactive' where accountnum=? and name=? and password=?");
		us.setInt(1, accountnum);
		us.setString(2,name);
		us.setString(3,password);
		int i=us.executeUpdate();
		out.println(i+"Welcome "+name+" your account number "+accountnum+"has closed");
		}
		else {
			out.print("ENTER VALID DETAILS");
		}
		con.close();
}
catch(Exception ex)
{
	System.out.println(ex);
}
%>
</body>
</html>
