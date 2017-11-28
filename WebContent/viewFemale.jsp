<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>

<%
String religion=request.getParameter("religion");
String maritalStatus=request.getParameter("maritalStatus");
String salary=request.getParameter("salary");
String height=request.getParameter("height");
String city=request.getParameter("city");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","root");
PreparedStatement stmt=con.prepareStatement("select * from user_registration where gender='female' and religion=? and marital_status=? and salary=? and heigth=? and address like'%"+city+"%'");
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

</body>
</html>