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
<div class="name2">
<%
String name=(String)session.getAttribute("name");
String gender=(String)session.getAttribute("gender");
%>
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
 %>
</div>
<div class="cangpass">

<form action="viewMale.jsp">
<table height="300px" border="0">
<tr>
<td width="200px">Religion</td>
<td>
<select name="religion" id="religion" >
<option value="Religion">Religion</option>
<option value="Christianity">Christianity</option>
<option value="Islam">Islam</option>
<option value="Hinduism">Hinduism</option>
<option value="Sikh">Sikh</option>
</select>
</td>
</tr>
<tr>
<td>Marital status </td>
        <td>
           <input id="marital_status1" type="radio" name="maritalStatus" value="Single" checked="checked">
           <label>Single</label>
          
           <input id="marital_status2" type="radio" name="maritalStatus" value="Divorced">
           <label>Divorced</label>
          
           <input id="marital_status3" type="radio" name="maritalStatus" value="Widowed">
           <label>Widowed</label>
          
           <input id="marital_status4" type="radio" name="maritalStatus" value="Separated">
           <label>Separated</label>
         </td>
 </tr>
 
  <tr>
 <td>
 City
 </td>
 <td>
 <input type="text" name="city">
 </td>
 </tr>

	 <tr>
 <td>Height</td>   
   <td>
    <select name="height" id="height">
	         <option value="4ft 5inc - 135cms">4ft 5inc - 135cms</option>
             <option value="4ft 6inc - 137cms">4ft 6inc - 137cms</option>
             <option value="4ft  7inc - 140cms">4ft  7inc - 140cms</option>
             <option value="4ft 8inc -  142cms">4ft 8inc -  142cms</option>
             <option value="4ft 9inc - 145cms">4ft 9inc - 145cms</option>
             <option value="4ft 10inc - 147cms">4ft 10inc - 147cms</option>
             <option value="4ft 11inc - 150cms">4ft 11inc - 150cms</option>
             <option value="5ft - 152cms">5ft - 152cms</option>
             <option value="5ft 1inc - 155cms">5ft 1inc - 155cms</option>
             <option value="5ft 2inc - 157cms">5ft 2inc - 157cms</option>
             <option value="5ft 3inc - 160cms">5ft 3inc - 160cms</option>
             <option value="5ft 4inc - 162cms">5ft 4inc - 162cms</option>
             <option value="5ft 5inc - 165cms">5ft 5inc - 165cms</option>
             <option value="5ft 6inc - 167cms">5ft 6inc - 167cms</option>
             <option value="5ft 7inc - 170cms">5ft 7inc - 170cms</option>
             <option value="5ft 8inc - 172cms">5ft 8inc - 172cms</option>
             <option value="5ft 9inc - 175cms">5ft 9inc - 175cms</option>
             <option value="5ft 10inc - 177cms">5ft 10inc - 177cms</option>
             <option value="5ft 11inc - 180cms">5ft 11inc - 180cms</option>
             <option value="6ft - 183cms">6ft - 183cms</option>
             <option value="6ft 1inc - 186cms">6ft 1inc - 186cms</option>
             <option value="6ft 2inc - 188cms">6ft 2inc - 188cms</option>
          </select>
   </td>
   </tr>
 
      <tr>
<td>
Salary
</td>
<td>
<select name="salary">
<option value="<5000">&lt;5000</option>
<option value="5000-10000">5000-10000</option>
<option value="10000-25000">10000-25000</option>
<option value="25000-50000">25000-50000</option>
<option value="50000-100000">50000-100000</option>
<option value="100000<">100000&gt;</option>
</select>
</td>
</tr>
 
 <tr>
 <td colspan="2"><center>
 <input type="submit" name="Search" /></center>
 </td>
 </tr>
</table>
</form>
</div>




</div>
<div class="futer"></div>
</body>
</html>


















