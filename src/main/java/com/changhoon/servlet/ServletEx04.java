package com.changhoon.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class ServletEx04 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><title>리스트출력</title></head><body><ul>");
		int sum = 0;
		for(int i = 0; i < 30; i++) {
			sum++;
			out.println("<li>" + sum + "번째 리스트</li>");
		}
		out.println("</ul></body></html>");
	}
}
