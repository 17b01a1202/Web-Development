<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>  
<%@page import="java.util.*"%>  
<%@include file="sell.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ResultSet rs = null;
String un=request.getParameter("name");
String pn=request.getParameter("phno");
String em=request.getParameter("mail");
String pl=request.getParameter("place");
String pd=request.getParameter("pwd");
if(un=="" || pn==""|| em=="" || pl=="" || pd=="")
{
out.println("none of the fields can be left empty\n");
}
else{
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sitefinder","root","");
PreparedStatement ps=con.prepareStatement("SELECT * FROM `details` WHERE Phone=? AND email=?");
ps.setString(1,pn);
ps.setString(2,em);
rs=ps.executeQuery();
if(rs.next())
{
out.print("You are already a user, please login to proceed");
RequestDispatcher req = request.getRequestDispatcher("login.html");
req.forward(request, response);
}
else{
PreparedStatement p=con.prepareStatement("insert into details values(?,?,?,?,?)");
p.setString(1,un);
p.setString(2,pn);
p.setString(3,em);
p.setString(4,pl);
p.setString(5,pd);
p.executeUpdate();
RequestDispatcher req1 = request.getRequestDispatcher("register.jsp");
req1.forward(request, response);
}
}
catch(Exception e){
out.print(e);
e.printStackTrace();
}
}
%>
</body>
</html>