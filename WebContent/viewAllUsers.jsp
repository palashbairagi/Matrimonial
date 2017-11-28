<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>

<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","root");
PreparedStatement stmt=con.prepareStatement("select * from user_registration");

ResultSet r=stmt.executeQuery();
if(r.next())
{
	
	int id=r.getInt("id");
	 String firstName=r.getString("first_name");
		String lastName=r.getString("last_name");
		String dob=r.getString("date_of_birth"); %>

<tr><td width="300px"><center><b><%=firstName+" "+lastName%></center></b></td>	
<td><a class="namelink" href="view1.jsp?id=<%=id %>">View</a></td>
<td><a href="edit1.jsp?id=<%=id%>">Edit</a></td>
<td><a href="delete1.jsp?id=<%=id%>">Delete</a></td>
</tr>

<%}
else
{
	%>
	No Record Found
	<%
}
while(r.next())
{
	int id=r.getInt("id");
	 String firstName=r.getString("first_name");
		String lastName=r.getString("last_name");
		String dob=r.getString("date_of_birth"); %>

<tr><td width="300px"><center><b><%=firstName+" "+lastName%></center></b></td>	
<td><a class="namelink" href="view1.jsp?id=<%=id %>">View</a></td>
<td><a href="edit1.jsp?id=<%=id%>">Edit</a></td>
<td><a href="delete1.jsp?id=<%=id%>">Delete</a></td>
</tr>
<%} %>
</table>

</body>
</html>