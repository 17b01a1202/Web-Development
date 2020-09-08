package com.pst.ir.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.pst.id.dao.imgDao;
import com.pst.id.dto.imgDto;
@WebServlet("/imgController")
public class imgController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		imgDao dao = null;
		String Place = request.getParameter("Place");
		System.out.println(Place);
		dao = new imgDao();
		List<imgDto> list = dao.getDataByPlace(Place);
		request.setAttribute("list", list);
		RequestDispatcher dis = request.getRequestDispatcher("/img.jsp");
		dis.forward(request, response);
	}

}
