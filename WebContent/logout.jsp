<%
session.removeAttribute("id");
session.removeAttribute("name");
session.removeAttribute("gender");
session.removeAttribute("adminId");

session.setAttribute("error", "Successfully Logged Out");
%>
<jsp:forward page="index.jsp"></jsp:forward>