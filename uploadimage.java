package com.iu.controller;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.iu.utils.DB;
@WebServlet("/uploadimage")
@MultipartConfig(maxFileSize=16177216)
public class uploadimage extends HttpServlet {
	PrintWriter out;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int res=0;
		String place=request.getParameter("Place");
		String area=request.getParameter("Area");
		String mail=request.getParameter("email");
		Part part =request.getPart("image");
		if(part!=null){
			try{
				Connection con=DB.getConnection();
				PreparedStatement ps = con.prepareStatement("INSERT INTO imgdetails(Place,Area,email,image) values (?,?,?,?)");
				   InputStream is = (InputStream) part.getInputStream();
				   ps.setString(1, place);
				   ps.setString(2, area);
				   ps.setString(3, mail);
				   ps.setBlob(4,is);
				   res=ps.executeUpdate();
				   if(res>0){
					   response.getWriter().println("Successfully uploaded");
				   }
			} catch (Exception e) {
				System.out.println(e);
			}
		}
	}
}
