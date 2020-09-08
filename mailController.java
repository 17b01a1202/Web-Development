package com.pst.mc.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.pst.mc.dao.mailDao;
import com.pst.mc.dto.mailDto;
@WebServlet("/mailController")
public class mailController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		mailDao dao = null;
		String Email = request.getParameter("Email");
		System.out.println(Email);
		dao = new mailDao();
		List<mailDto> list = dao.getDataByEmail(Email); 
		request.setAttribute("list", list);
		RequestDispatcher dis = request.getRequestDispatcher("/mail.jsp");
		dis.forward(request, response);
	}
}
