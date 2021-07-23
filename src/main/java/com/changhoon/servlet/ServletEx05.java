package com.changhoon.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class ServletEx05 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		int number = Integer.parseInt(request.getParameter("number"));

		

		out.println("<html><head><title>" + number + "단</title></head><body><ul>");
		for(int i = 1; i < 10; i++) {
			out.println("<li>" + number + "X" + i + "=" + number * i + "</li>");
		}
		out.println("</ul></body></html>");
		
	}

}
