<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import=" java.util.Date"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.ParseException"%>
<%@ page import="java.text.SimpleDateFormat"%>
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

<div class="newuserbody">

<div class="mainnew">


<div class="hader2">
<div class="mar"></div>

<center><div class="menu1">
<ul>
</ul>
</div></center></div>
<div class="viewall">
<table height="1200px" width="500px">
<%
 
String id=request.getParameter("id");
String path="";
path=path+id+".jpg";

System.out.println(path);

Date date1=new Date();
DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
String todayDate=dateFormat.format(date1);

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","root");
PreparedStatement stmt=con.prepareStatement("select * from user_registration where id="+id);
ResultSet r=stmt.executeQuery();
if(r.next())
{
	
	String firstName=r.getString("first_name");
	String lastName=r.getString("last_name");
	String gender=r.getString("gender");
	String dateOfBirth=r.getString("date_of_birth");
	String religion=r.getString("religion");
	String address=r.getString("address");
	String country=r.getString("country");
	String emailAddress=r.getString("email_address");
	String maritalStatus=r.getString("marital_status");
	String education=r.getString("education");
	String profession=r.getString("profession");
	String heigth=r.getString("heigth");
	String weight=r.getString("weight");
	String built=r.getString("built");
	String complextion=r.getString("complextion");
	String eyeColor=r.getString("eye_color");
	String hairColor=r.getString("hair_color");
	String diet=r.getString("diet");
	String drink=r.getString("drink");
	String smoke=r.getString("smoke");
	String salary=r.getString("salary");
	String pSalary=r.getString("p_Salary");
	String pHeight=r.getString("p_Height");
	String pCity=r.getString("P_city");
	
	PreparedStatement ps=con.prepareStatement("select dateDiff('"+todayDate+"','"+dateOfBirth+"')/365 as age");
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		int age=rs.getInt("age");
	%>
<tr><td><img src="<%=path %>" alt="No Image Found" width="100" height="100"></img></td><td>Name</td><td><%=firstName%></td></tr>
<tr><td>Gender</td><td><%=gender%></td></tr>
<tr><td>Date Of Birth</td><td><%=dateOfBirth%></td></tr>
<tr><td>Age</td><td><%=age %> Yrs</td></tr>
<tr><td>Religion</td><td><%=religion%></td></tr>
<tr><td>Address</td><td><%=address%></td></tr>
<tr><td>Country</td><td><%=country%></td></tr>
<tr><td>Email Address</td><td><%=emailAddress%></td></tr>
<tr><td>Marital Status</td><td><%=maritalStatus%></td></tr>
<tr><td>Education</td><td><%=education%></td></tr>
<tr><td>Profession</td><td><%=profession%></td></tr>
<tr><td>Salary</td><td><%=salary %></td></tr>
<tr><td>Height</td><td><%=heigth%></td></tr>
<tr><td>Weight</td><td><%=weight %></td></tr>
<tr><td>Built</td><td><%=built%></td></tr>
<tr><td>Complextion</td><td><%=complextion%></td></tr>
<tr><td>Eye Color</td><td><%=eyeColor%></td></tr>
<tr><td>Hair Color</td><td><%=hairColor%></td></tr>
<tr><td>Diet</td><td><%=diet%></td></tr>
<tr><td>Drink</td><td><%=drink%></td></tr>
<tr><td>Smoke</td><td><%=smoke%></td></tr>
<tr><td>Preferred Salary</td><td><%=pSalary %></td></tr>
<tr><td>Preferred Height</td><td><%=pHeight %></td></tr>
<tr><td>Preferred City</td><td><%=pCity %></td></tr>
<%}
	}%>
</table>
</div>
</div>

<div class="futer"></div>
</body>
</html>
