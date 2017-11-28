<%@ page language="java"%>
<%@ page import="java.sql.*"%>
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
.namelink
{
	color:#F00;
	text-decoration:none;
}
.namelink:hover
{
color:green;	
text-decoration:none;

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
<li><a href="logout.jsp">Logout</a></li></ul></div></center>
<div class="name2">
<%
String name=(String)session.getAttribute("name");
String gender=(String)session.getAttribute("gender");
%>
<table><tr><td><font color="#a30404"><h1>Welcome, <%=name%></h1></font></td></tr></table></div>
<div class="serch">
<%if(gender.equals("Male"))
	{
%>
<li><a href="searchFemale.jsp">Search</a></li>
<%
}
else
{ 
%>
<li><a href="searchMale.jsp">Search</a></li>
<%
}
 %>
</div>

<div class="cangpass">

<table border="0" width="500" height="250px">
<tr>
<td colspan="2"><center><h2>Search Results</h2></center></td>
</tr>
<% 
String religion=request.getParameter("religion");
String maritalStatus=request.getParameter("maritalStatus");
String salary=request.getParameter("salary");
String height=request.getParameter("height");
String city=request.getParameter("city");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","root");
PreparedStatement stmt=con.prepareStatement("select * from user_registration where gender='male' and religion=? and marital_status=? and salary=? and heigth=? and address like'%"+city+"%'");
stmt.setString(1, religion);
stmt.setString(2, maritalStatus);
stmt.setString(3, salary);
stmt.setString(4, height);
ResultSet r=stmt.executeQuery();
if(r.next())
{
	
	int id=r.getInt("id");
	 String firstName=r.getString("first_name");
		String lastName=r.getString("last_name");
		String dob=r.getString("date_of_birth"); %>



<tr><td width="300px"><center><b><%=firstName+" "+lastName%></center></b></td>	
<td><a class="namelink" href="viewAll.jsp?id=<%=id %>">View Full Information </a></td>
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
<td><a class="namelink" href="viewAll.jsp?id=<%=id %>">View Full Information </a></td>
</tr>

<%} %>
</table>
</div>
</div>
</div>
<div class="futer"></div>
</body>
</html>