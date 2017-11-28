<%@ page language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

<style>
.menu1 {
	margin-left:120px;
	text-transform: uppercase;
	height:50px;
	width:1000px;
	
}
.menu1 ul li {
	border-right: 2px ridge #C20F0F;
	float: left;
	
	display:inline;
}
.menu1 ul li a {
	display: block;
	color: #FFF;
	margin: 0;
	padding: 16px 33px;
	text-decoration: none;
	font-family: 'Noticia Text', serif;
	font-size: 15px;
}
 .menu1 li a:hover{
	-webkit-transition: .5s all linear;
	-moz-transition: .5s all linear;
	-o-transition: .5s all linear;
	transition: .5s all linear;
	box-shadow: inset 0 1px 0 #5C0303,inset 0 0 40px 0 #5C0303;
	color: #FFF;
}
.menu1 ul li:nth-child(5){
	border-right:none;
} 

</style>

</head>

<body background="image/bg.jpg">

<div class="contactbody">

<div class="maincon">


<div class="hader2">
<div class="mar"></div>

<center><div class="menu1">
<ul>
<li class="active">
<a href="home.jsp">Home</a></li> 
<li><a href="edit.jsp">Edit Profile</a></li>
<li><a href="changePasswordPage.jsp">Change Password</a></li>
<li><a href="delete.jsp">Delete Account</a></li>
<li><a href="logout.jsp">Logout</a></li></ul></div></center></div>
<%@page import="java.sql.*;" %>

<%
String name=(String)session.getAttribute("name");
String gender=(String)session.getAttribute("gender");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","root");

%>
<div class="name2">
<table><tr><td><font color="#a30404"><h1>Welcome, <%=name%></h1></font></td></tr></table></div>
<div class="serch">
<table>
<%if(gender.equals("Male"))
	{
	
	PreparedStatement preparedStatement=con.prepareStatement("select * from user_registration where gender='female'");
	ResultSet r=preparedStatement.executeQuery();
	while(r.next())
	{
		int id=r.getInt("id");
	 	String firstName=r.getString("first_name");
		String lastName=r.getString("last_name");
		String dob=r.getString("date_of_birth"); %>

<tr><td><center><b><%=firstName+" "+lastName%></center></b></td>	
<td><a class="namelink" href="viewAll.jsp?id=<%=id %>">View</a></td>
</tr>

		<%
	}
%>
<li><a href="searchFemale.jsp">Search</a></li>
<%
}
else
{ 
PreparedStatement preparedStatement=con.prepareStatement("select * from user_registration where gender='male'");
	ResultSet r=preparedStatement.executeQuery();
	while(r.next())
	{
		int id=r.getInt("id");
	 	String firstName=r.getString("first_name");
		String lastName=r.getString("last_name");
		String dob=r.getString("date_of_birth"); %>

<tr><td><center><b><%=firstName+" "+lastName%></center></b></td>	
<td><a class="namelink" href="viewAll.jsp?id=<%=id %>">View</a></td>
</tr>
<%} %>

<li><a href="searchMale.jsp">Search</a></li>
<%
}
%>
</table>
</div>


</div>
<div class="futer"></div>
</body>
</html>