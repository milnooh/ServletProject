package com.changhoon.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.changhoon.common.MysqlService;

@WebServlet("/db/test02_delete")
public class Databasetest02Delete extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String deleteQuery = "DELETE FROM `web_site` WHERE `id` = " + id;
		int count =  mysqlService.update(deleteQuery);
		
		if(count == 1) {
			response.sendRedirect("/db/test02.jsp");
		}
		
	}
}