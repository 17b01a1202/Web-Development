<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>  
<%@include file="login.html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ResultSet rs1 = null;
String em1=request.getParameter("logem");
String pwd1=request.getParameter("logpd");
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/sitefinder","root","");
PreparedStatement s1=con1.prepareStatement("SELECT * FROM `details` WHERE email=? AND password=?");
s1.setString(1,em1);
s1.setString(2,pwd1);
rs1=s1.executeQuery();
if(rs1.next()){
RequestDispatcher req1 = request.getRequestDispatcher("sellpage.jsp");
req1.forward(request, response);
}
else{
out.print("Enter proper credentials");
//RequestDispatcher req2 = request.getRequestDispatcher("sell.jsp");
//req2.forward(request, response);
}

%>
</body>
</html>