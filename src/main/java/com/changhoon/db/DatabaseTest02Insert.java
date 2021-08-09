package com.changhoon.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.changhoon.common.MysqlService;

@WebServlet("/db/test02_insert")
public class DatabaseTest02Insert extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 이름, 생연월일, 자기소개, 이메일
		String name = request.getParameter("name");
		String url = request.getParameter("url");

		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String insertQuery = "INSERT INTO `web_site` (`name`, `url`)\r\n"
				+ "VALUE ('" + name + "', '" + url + "');";
		
		int count = mysqlService.update(insertQuery);
		
		if(count == 1) {
			response.sendRedirect("/db/test02.jsp");			
		}
		
		
	}
}
