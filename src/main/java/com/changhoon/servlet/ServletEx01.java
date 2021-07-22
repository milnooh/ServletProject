package com.changhoon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletEx01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		Date now = new Date();
		
		PrintWriter out = response.getWriter();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
		out.println("오늘 날짜는 " + formatter.format(now));
		
		
	}
}
