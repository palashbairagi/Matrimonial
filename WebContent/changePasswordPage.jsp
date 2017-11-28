

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
<%
String name=(String)session.getAttribute("name");
String gender=(String)session.getAttribute("gender");
%>
<div class="name2">
<table><tr><td><font color="#a30404"><h1>Welcome, <%=name%></h1></font></td></tr></table></div>

<div class="serch">
<%if(gender.equals("male"))
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
 %></div>


<div class="cangpass">
<form action="changePassword.jsp" >
<table class="style1" height="200px" border="0">
<caption>
<h2>
Change Password
</h2>
</caption>
<tr>
<td width="200px">New Password
</td>
<td><input name="password" type="password" size="50" maxlength="50" class="style1"/>
</td>
</tr>
<tr>
<td>Confirm Password
</td>
<td><input name="confirmPassword" type="password" size="50" maxlength="50" class="style1"/>
</td>
</tr>
<tr>
<td colspan="2"><center><input name="submit" type="submit" value="Change Password" class="style1"/>

<input name="reset" type="reset" value="Clear" class="style1"/></center>
</td>
</tr>
</table>
</form>
</div>

</div>
<div class="futer"></div>
</body>
</html>







