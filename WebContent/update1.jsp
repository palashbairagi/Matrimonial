<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String gender=request.getParameter("gender");
String dateOfBirth=request.getParameter("dob");
String religion=request.getParameter("religion");
String address=request.getParameter("address");
String country=request.getParameter("country");
String emailAddress=request.getParameter("email");
String maritalStatus=request.getParameter("maritalStatus");
String education=request.getParameter("education");
String profession=request.getParameter("profession");
String heigth=request.getParameter("height");
String weight=request.getParameter("weight");
String built=request.getParameter("built");
String complextion=request.getParameter("complexion");
String eyeColor=request.getParameter("eyeColor");
String hairColor=request.getParameter("hairColor");
String diet=request.getParameter("diet");
String drink=request.getParameter("drinking");
String smoke=request.getParameter("smoking");
String salary=request.getParameter("salary");
String pSalary=request.getParameter("pSalary");
String pHeight=request.getParameter("pHeight");
String pCity=request.getParameter("pCity");


int id=Integer.parseInt(request.getParameter("id"));

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","root");
PreparedStatement stmt=con.prepareStatement("update user_registration set first_name=?,last_name=?,gender=?,date_of_birth=?,religion=?,address=?,country=?,email_address=?,marital_status=?,education=?,profession=?,heigth=?,weight=?,built=?,complextion=?,eye_color=?,hair_color=?,diet=?,drink=?,smoke=?,salary=?,p_salary=?,p_height=?,p_city=? where id=?"); 
stmt.setString(1,firstName);
stmt.setString(2,lastName);
stmt.setString(3,gender);
stmt.setString(4,dateOfBirth);
stmt.setString(5,religion);
stmt.setString(6,address);
stmt.setString(7,country);
stmt.setString(8,emailAddress);
stmt.setString(9,maritalStatus);
stmt.setString(10,education);
stmt.setString(11,profession);
stmt.setString(12,heigth);
stmt.setString(13,weight);
stmt.setString(14,built);
stmt.setString(15,complextion);
stmt.setString(16,eyeColor);
stmt.setString(17,hairColor);
stmt.setString(18,diet);
stmt.setString(19,drink);
stmt.setString(20,smoke);
stmt.setString(21,salary);
stmt.setString(22,pSalary);
stmt.setString(23,pHeight);
stmt.setString(24,pCity);
stmt.setInt(25,id);
stmt.executeUpdate();
%>


<script type="text/javascript"> alert('User Successfully Updated')</script>
<jsp:forward page="viewAllUsers.jsp"></jsp:forward>