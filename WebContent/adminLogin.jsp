<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String userName=request.getParameter("userName");
String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","root");

PreparedStatement preparedStatement=con.prepareStatement("select * from user where user_name=? and password=?");
preparedStatement.setString(1, userName);
preparedStatement.setString(2, password);
ResultSet resultSet=preparedStatement.executeQuery();

if(resultSet.next())
{
	int adminId=resultSet.getInt("id");
	session.setAttribute("adminId",adminId);
%>
<jsp:forward page="adminHome.jsp"></jsp:forward>
<%}
else
{
%>
<jsp:forward page="adminLoginPage.jsp"></jsp:forward><%
	}
%>
