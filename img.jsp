<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pst.id.dto.imgDto" %>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display by place</title>
</head>
<body>
<%
List<imgDto> list = (ArrayList<imgDto>)request.getAttribute("list");
%>
<center>
<table border="0">
<thead>
<tr><td>Place</td><td>Area</td><td>Email</td><td>Image</td></tr>
</thead>
<%
for(imgDto dto : list){%>
<tr>
<td><%=dto.getPlace() %></td>
<td><%=dto.getArea() %></td>
<td><%=dto.getEmail() %></td>
<td><img src="data:image/jpg;Base64,<%=dto.getImage()%>" height="100" width="100"></td>
</tr>
<%}
%>
</table>
</center>
</body>
</html>