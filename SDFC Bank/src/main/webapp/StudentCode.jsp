<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<%String sid=request.getParameter("sid") ;
String sname=request.getParameter("sname") ;
String submit=request.getParameter("submit") ;
int english=Integer.parseInt(request.getParameter("eng"));
int computer=Integer.parseInt(request.getParameter("comp"));
int maths=Integer.parseInt(request.getParameter("maths"));
int physics=Integer.parseInt(request.getParameter("phy"));
int chemistry=Integer.parseInt(request.getParameter("chem"));

int total=english+computer+maths+physics+chemistry;
double avg=total/5;
String grade=null;
if(avg>90) 
{
	grade="A grade";
}
else if(avg>70&&avg<90) 
{
	grade="B grade";
}
else if(avg>50&&avg<70)
{
	grade="C grade";
}
else{
	grade="FAIL";
}
try
{

if(submit.equals("save"))
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");
	PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,sid);
	ps.setString(2,sname);
	ps.setInt(3,english);
	ps.setInt(4,computer);
	ps.setInt(5,maths);
	ps.setInt(6,physics);
	ps.setInt(7,chemistry);
	ps.setInt(8,total);
	ps.setDouble(9,avg);
	ps.setString(10,grade);
	int i=ps.executeUpdate();
	out.print(i+"New Record Inserted Successfully....!");
	con.close();
	}

if(submit.equals("update"))
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");
	PreparedStatement ps=con.prepareStatement("update student set english=?,computer=?,maths=?,physics=?,chemistry=?,total=?,avg=?,grade=? where sid=? and sname=?");
	ps.setInt(1,english);
	ps.setInt(2,computer);
	ps.setInt(3,maths);
	ps.setInt(4,physics);
	ps.setInt(5,chemistry);
	ps.setInt(6,total);
	ps.setDouble(7,avg);
	ps.setString(8,grade);
	ps.setString(9,sid);
	ps.setString(10,sname);
	int i=ps.executeUpdate();
	out.print(i+" RECORDS UPDATED .......");
	con.close();	
}

if(submit.equals("delete"))
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");
	PreparedStatement ps=con.prepareStatement("delete from student where sid=? and sname=?");
	ps.setString(1,sid);
	ps.setString(2,sname);
	int i=ps.executeUpdate();
	out.print(i+" RECORDS UPDATED .......");
	con.close();	
}

if(submit.equals("showrecords"))
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");
	PreparedStatement ps=con.prepareStatement("select *from student where sid=? and sname=?");
	ps.setString(1,sid);
	ps.setString(2,sname);
	 ResultSet rs=ps.executeQuery();
	  ResultSetMetaData rsmd=rs.getMetaData();
		out.print("<html><body><table border=1>");
		int n=rsmd.getColumnCount();
		for(int i=1;i<=n;i++)
			out.println("<td> <font color=blue size=3>"+"<br>"+rsmd.getColumnName(i));
			out.println("<tr>");
			while(rs.next())
			{
				for(int i=1;i<=n;i++)
					out.print("<td><br>"+rs.getString(i));
				out.println("<tr>");
			}
			out.print("</table></body></html>");
		
		con.close();
	
}

}
catch(Exception ex){
	out.print(ex);
}
%>
</body>
</html>