package com.changhoon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletEx02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		Date now = new Date();
		
		PrintWriter out = response.getWriter();
		
		SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초");
		out.println("현재 시간은 " + formatter.format(now) + "입니다.");
		
		
	}
}
