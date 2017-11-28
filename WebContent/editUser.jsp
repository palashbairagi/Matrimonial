<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page import="java.sql.*" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
</head>
<body>

<% 
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","root");
PreparedStatement stmt=con.prepareStatement("select * from user where id=?");
stmt.setInt(1,id);
ResultSet r=stmt.executeQuery();
if(r.next())
{
	String userName=r.getString("user_Name");
	String password=r.getString("password");
    %>
    
<form action="updateUser.jsp" method="post" id="userForm" name="userForm" >
<table>
<caption>
<h2>
Edit User
</h2></caption>
<tr>
<td><input name="id" type="hidden" size="20" maxlength="20" class="style1" id="id" value="<%=id%>"/>
</td>
</tr>
<tr>
<td width="180">User Name
</td>
<td><input name="userName" type="text" size="20" maxlength="20" class="style1" id="userName" value="<%=userName %>"/>
</td>
</tr>
<tr>
<td>Password
</td>
<td><input name="password" type="text" size="20" maxlength="20" class="style1" id="password" value="<%=password%>"/>
</td>
</tr>
<tr>
<tr>
<td><input name="Update" type="submit" value="Update" class="style1" />
</td>
</tr>
</table>
<%} %>
</form>
</body>
</html>

