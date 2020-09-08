<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<form method="post" action="insert.jsp">
<table>
<tr><h2>Register</h2></tr>
<tr><td>Name :</td><td><input type="text"  name="name"/></td></tr>
<tr><td>Phone Number :</td><td><input type="text" maxlength="10" name="phno"/></td></tr>
<tr><td>Email :</td><td><input type="email"  name="mail"/></td></tr>
<tr><td>Place :</td><td><input type="text"   name="place"/></td></tr>
<tr><td>Password :</td><td><input type="password" name="pwd"/></td></tr>
</table>
</br><button type="submit" >submit</button></br></br>
</form>
<form method="post" action="login.html">
Already have an account?<input type="submit" value="login"/>
</form>
</center>
</body>
</html>