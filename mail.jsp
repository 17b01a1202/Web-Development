<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pst.mc.dto.mailDto" %>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display by email</title>
</head>
<body>
<%
List<mailDto> list = (ArrayList<mailDto>)request.getAttribute("list");
%>
<center>
<table border="0">
<thead>
<tr><td>Place</td><td>Area</td><td>Email</td><td>Image</td><td>Action</td></tr>
</thead>
<%
for(mailDto dto : list){%>
<tr>
<td><%=dto.getPlace() %></td>
<td><%=dto.getArea() %></td>
<td><%=dto.getEmail() %></td>
<td><img src="data:image/jpg;Base64,<%=dto.getImage()%>" height="100" width="100"></td>
<td><a href="delete.jsp?id=<%=dto.getId()%>"><button>Delete</button></a></td>
</tr>
<%}
%>
</table>
</center>
</body>
</html>