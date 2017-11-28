<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
</head>
<body>
<h2>Add Admin</h2>

<form action="addUser.jsp" method="get" name="userForm">
<table class="style1">
<tr>
<td width="213">Username</td>
<td><input name="userName" type="text" size="50" maxlength="50" class="style1"/>
</td>
</tr>
<tr>
<td>Password
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
<td><input name="submit" type="submit" value="Add" class="style1"/>
</td>
<td><input name="reset" type="reset" value="Clear" class="style1"/>
</td>
</tr>
</table>
</form>
</body>
</html>