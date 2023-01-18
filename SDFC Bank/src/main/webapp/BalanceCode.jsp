<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
int accountnum=Integer.parseInt(request.getParameter("ano"));
String name=request.getParameter("uname");
String password=request.getParameter("psw");

try
   {
      Class.forName("oracle.jdbc.driver.OracleDriver");
	  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");
	  PreparedStatement ps=con.prepareStatement("select *from sdfc where accountnum=? and name=? and password=? and status='active'");
	  ps.setInt(1,accountnum);
	  ps.setString(2,name);
	  ps.setString(3,password);
	  ResultSet rs=ps.executeQuery();
	  ResultSetMetaData rsmd=rs.getMetaData();
		out.print("<html><body><table border=1>");
		int n=rsmd.getColumnCount();
		out.print("<td> <font color=aqua size=3>"+"<br>"+rsmd.getColumnName(1));
		out.print("<td> <font color=aqua size=3>"+"<br>"+rsmd.getColumnName(2));
		out.print("<td> <font color=aqua size=3>"+"<br>"+rsmd.getColumnName(4));
		out.print("<td> <font color=aqua size=3>"+"<br>"+rsmd.getColumnName(5));
		out.print("<td> <font color=aqua size=3>"+"<br>"+rsmd.getColumnName(6));
		out.println("<tr>");
			while(rs.next())
			{
				out.print("<td><br>"+rs.getString(1));
				out.print("<td><br>"+rs.getString(2));
				out.print("<td><br>"+rs.getString(4));
				out.print("<td><br>"+rs.getString(5));
				out.print("<td><br>"+rs.getString(6));
			}
			out.print("</table></body></html>");
		
		con.close();
	}
	catch(Exception ex){
		out.print(ex);
	}			
%>