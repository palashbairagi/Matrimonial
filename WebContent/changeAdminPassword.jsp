<%@ page import="java.sql.*" %>
<%
int id=(Integer)session.getAttribute("adminId");
String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","root");

PreparedStatement preparedStatement=con.prepareStatement("update user set password=? where id=?");
preparedStatement.setString(1, password);
preparedStatement.setInt(2, id);
preparedStatement.executeUpdate();
%>
<jsp:forward page="adminHome.jsp"></jsp:forward>