<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String mail = request.getParameter("mail");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sitefinder","root","");
	if(!con.isClosed()){
		PreparedStatement ps=con.prepareStatement("SELECT * FROM `details` WHERE email='"+mail+"'");
		ResultSet rs = ps.executeQuery();
		if(rs.next()){%>
			<html>
			<head>
			<!-- <script type="text/javascript">
			function validateform(){  
				var name=document.myform.name.value;  
				var phno=document.myform.phno.value;
				var mail=document.myform.mail.value;
				var place=document.myform.place.value;
				var pwd=document.myform.pwd.value;  
				if (name==null || name=="" || place==null || place=="" || phno==null || phno=="" || pwd==null || pwd=="" || mail==null || mail==""){  
					out.println("none of the fields can be left empty\n");
				}  
			}</script> -->
			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<title>User Details</title>
			</head>
			<body><center>
			<form action="update.jsp" method="post" onsubmit="validateform()" name="myform">
			Name:
			<input type="text" name="name" value="<%=rs.getString("Name") %>">
			<br>
			Mobile no:
			<input type="text" name="phno" maxlength="10" value="<%=rs.getString("Phone") %>">
			<br>
			Email Id:
			<input type="email" name="mail" value="<%=rs.getString("email") %>">
			<br>
			Place:
			<input type="text" name="place" value="<%=rs.getString("Place") %>">
			<br>
			Password:
			<input type="text" name="pwd" value="<%=rs.getString("Password") %>">
			<br><br>
			<input type="submit" value="Update">
			</form></center>
			</body>
			</html>
		<%}
		else{
			out.println("Record not exist");
		}
	}
}
catch(Exception e){
	out.println("The error is::"+e.getMessage());
} %>
