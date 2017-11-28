<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script>
function chk()
{
var stat=true;
if(document.adminLoginForm.email.value.length==0)
{
document.getElementById("loginMsg").innerHTML="Required**";
stat=false;
}
if(document.adminLoginForm.password.value.length==0)
{
document.getElementById("passMsg").innerHTML="Required**";
stat=false;
}
return(stat);
}
function clearLoginMesg()
{
if(document.adminLoginForm.email.value.length>0)
{
document.getElementById("loginMsg").innerHTML=" ";
}
}
function clearPassMesg()
{
if(document.adminLoginForm.password.value.length>0)
{
document.getElementById("passMsg").innerHTML=" ";
}
}
</script>
</head>

<body background="image/bg.jpg">
<div class="contactbody">
<div class="hader">



</div>
<div class="maincon">
<div class="left">
<div class="had"></div>
<div class="idd">
<div class="user"><h2>User Login</h2></div>
<form action="adminLogin.jsp" method="get" name="adminLoginForm" >
<table class="style1" border="0" height="200px">
<tr><td width="250px"><font color="#FFFFFF">Email</font></td></tr>
<tr><td><input name="email" type="email"  maxlength="50" size="30" onkeyup="clearLoginMesg()" /></td><td width="100px"><div id="loginMsg"></td>
</tr>
<tr><td><font color="#FFFFFF">Password</font></td></tr>
<tr><td><input name="password" type="password"  maxlength="50" size="30" onkeyup="clearPassMesg()"/></td><td width="50px"><font color="#FF0000"><div id="passMsg"></font></td></tr>
<tr><td><input name="submit" type="submit" value="Login" onclick="return chk()"/> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <input name="reset" type="reset" value="Clear" /></td></tr>
</table></form>

</div>
</div>



<div class="right">
<div class="had2"></div>
<div class="image1">
<div class="imageabut">
<div class="buttop"></div>
<div class="but"><form action="Newuser.jsp">
<input type="submit" value="Register Now" /></form></div>
</div></div>
<div class="had2"></div>
<div class="right2">
<div class="manubox">
<div class="menu">
						 <ul>
							 <li class="active"><a href="index.html">Home</a></li> 
							 <li><a href="about.html">About</a></li>
							 <li><a href="services.html">Services</a></li>
							  <li><a href="gallery.html">Gallery</a></li>
							 <li><a href="contact.html">Contact</a></li>
							 <div class="clear"></div>
						</ul>
					</div>

</div>




<div class="form">

</div>







</div>

</div>

</div>
<div class="futer"></div>
</body>
</html>
