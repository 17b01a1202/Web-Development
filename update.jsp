<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String name = request.getParameter("name");
String phno = request.getParameter("phno");
String mail = request.getParameter("mail");
String place= request.getParameter("place");
String pwd= request.getParameter("pwd");
if(name==null || name=="" || place==null || place=="" || phno==null || phno=="" || pwd==null || pwd=="" || mail==null || mail=="")
{
out.println("none of the fields can be left empty\n");
}
if(name==null || name=="" || place==null || place=="" || phno==null || phno=="" || pwd==null || pwd=="" || mail==null || mail==""){
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sitefinder","root","");
			PreparedStatement ps=con.prepareStatement("Update details set Name=?,Phone=?,email=?,Place=?,Password=? WHERE email='"+mail+"'");
			ps.setString(1,name);
			ps.setString(2, phno);
			ps.setString(3, mail);
			ps.setString(4, place);
			ps.setString(5, pwd);
			int i = ps.executeUpdate();
			if(i > 0)
			{
			out.print("Record Updated Successfully");
			}
			else
			{
			out.print("There is a problem in updating Record.");
			}
	}
		catch(Exception e){
			out.println("The error is::"+e.getMessage());
		}
	}
%>