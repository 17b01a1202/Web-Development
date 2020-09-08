<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body align="center">
<h1>Successfully Registered!!!</h1>
<h2>Welcome Seller!</h2>
<h3>Upload your content here to proceed further...</h3>
<form action="./uploadimage" method="post" enctype="multipart/form-data">
<table align="center">
<tr><td>Place :</td><td><input type="text"  name="Place"/></td></tr>
<tr><td>Area :</td><td><input type="text" placeholder="Enter in sqfts" name="Area"/></td></tr>
<tr><td>Email :</td><td><input type="email"  name="email"/></td></tr>
<tr><td><input type="file" name="image"></td>
<td><input type="submit"></td></tr>
</table>
</form>
<p> after uploading</p>
<a href="sellpage.jsp">i'm done</a>
</body>
</html>