<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String userName=request.getParameter("email");
String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","root");

PreparedStatement preparedStatement=con.prepareStatement("select * from user_registration where email_address=? and password=?");
preparedStatement.setString(1, userName);
preparedStatement.setString(2, password);
ResultSet resultSet=preparedStatement.executeQuery();

if(resultSet.next())
{
	int id=resultSet.getInt("id");
	String name=resultSet.getString("first_name")+" "+resultSet.getString("last_name");
	String gender=resultSet.getString("gender");
	session.setAttribute("id", id);
	session.setAttribute("name", name);
	session.setAttribute("gender", gender);
%>
<jsp:forward page="home.jsp"></jsp:forward>
<%}
else
{
	session.setAttribute("error", "Invalid Username or password");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%

}
%>
