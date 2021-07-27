package com.changhoon.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex09")
public class ServletEx09 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String text = request.getParameter("text");
		
		out.println("<html><head><title>searching</title></head><body>");
		out.println("<h2>" + name + "님 지원이 완료 되었습니다.</h2><hr>");
		out.println("지원내용<br>");
		out.println(text);
		out.println("</body></html>");

	}
}
