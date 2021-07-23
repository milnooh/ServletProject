package com.changhoon.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex06")
public class ServletEx06 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		out.println("{\"addition\":" + (number1 + number2) + ","
				+ "\"substrution\":" + (number1 - number2) + ","
				+ "\"multipulication\":" + (number1 * number2) + ","
				+ "\"division\":" + (number1 / number2) + "}");
	}
	
}
