<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<h2>Admin</h2>

 <a href="addUserPage.jsp" class="style1">Add</a>
		
<table class="style1">
<tr><th>UserName</th></tr>


<%
int myId=(Integer)session.getAttribute("adminId");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","root");
PreparedStatement stmt=con.prepareStatement("select * from user");
ResultSet r=stmt.executeQuery();
while(r.next())
{
	int id=Integer.parseInt(r.getString("id"));
	String userName=r.getString("user_name");
	String password=r.getString("password");
	
	%>
	
	<tr><td><%=userName%></td>
	<%if(myId==id){%>
	<td>Your Account</td>
	<td><a href="editUser.jsp?id=<%=id%>">Edit</a></td>	
	<td><a href="deleteUser.jsp?id=<%=id%>">Delete Account</a></td>	
	<%}%>
	
	</tr>
<%}%> 
</table>
 		
</body>
</html>

