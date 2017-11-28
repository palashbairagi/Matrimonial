<%@ page import="java.sql.*" %>

<%
int id=(Integer)session.getAttribute("id");
String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","root");

PreparedStatement preparedStatement=con.prepareStatement("update user_registration set password=? where id=?");
preparedStatement.setString(1, password);
preparedStatement.setInt(2, id);
preparedStatement.executeUpdate();
%>
<jsp:forward page="home.jsp"></jsp:forward>