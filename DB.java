package com.iu.utils;
	import java.sql.Connection;
	import java.sql.DriverManager;

	public class DB {
	static Connection con = null;
	public static Connection getConnection() {

	try {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sitefinder","root","");
	}
	catch (Exception e){
	System.out.println(e);
	e.printStackTrace();
	}
	return con;
	    }
	}
