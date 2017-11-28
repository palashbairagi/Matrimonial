<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String gender=request.getParameter("gender");
String dateOfBirth=request.getParameter("dob");
String religion=request.getParameter("religion");
String address=request.getParameter("address");
String country=request.getParameter("country");
String emailAddress=request.getParameter("email");
String password=request.getParameter("password");
String maritalStatus=request.getParameter("maritalStatus");
String education=request.getParameter("education");
String profession=request.getParameter("profession");
String salary=request.getParameter("salary");
String heigth=request.getParameter("height");
String weight=request.getParameter("weight");
String built=request.getParameter("built");
String complextion=request.getParameter("complexion");
String eyeColor=request.getParameter("eyeColor");
String hairColor=request.getParameter("hairColor");
String diet=request.getParameter("diet");
String drink=request.getParameter("drinking");
String smoke=request.getParameter("smoking");
String pSalary=request.getParameter("pSalary");
String pHeight=request.getParameter("pHeight");
String pCity=request.getParameter("pCity");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","root");
PreparedStatement stmt=con.prepareStatement("insert into user_registration(first_name,last_name,gender,date_of_birth,religion,address,country,email_address,password,marital_status,education,profession,heigth,weight,built,complextion,eye_color,hair_color,diet,drink,smoke,salary,p_salary,p_height,p_city) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
stmt.setString(1,firstName);
stmt.setString(2,lastName);
stmt.setString(3,gender);
stmt.setString(4,dateOfBirth);
stmt.setString(5,religion);
stmt.setString(6,address);
stmt.setString(7,country);
stmt.setString(8,emailAddress);
stmt.setString(9,password);
stmt.setString(10,maritalStatus);
stmt.setString(11,education);
stmt.setString(12,profession);
stmt.setString(13,heigth);
stmt.setString(14,weight);
stmt.setString(15,built);
stmt.setString(16,complextion);
stmt.setString(17,eyeColor);
stmt.setString(18,hairColor);
stmt.setString(19,diet);
stmt.setString(20,drink);
stmt.setString(21,smoke);
stmt.setString(22,salary);
stmt.setString(23,pSalary);
stmt.setString(24,pHeight);
stmt.setString(25,pCity);
stmt.executeUpdate();
%>
<jsp:forward page="index.jsp" ></jsp:forward>
</body>
</html>