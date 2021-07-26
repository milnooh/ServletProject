package com.changhoon.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// /servlet/ex04?user_id=hagulu&name=임창훈&birth=19940414&email=lecture@hagulu.com
@WebServlet("/servlet/ex0000")
public class ServletEx0000 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		// 테이블 형태로 출력
		out.println("<html><head><title>회원정보</title></head>");
		out.println("<body> <table border=1>");
		// 이름 : 임창훈
		// 생년월일 : 19940414
		out.println("<tr><td>아이디</td> <td> " + userId + "</td></tr>");
		out.println("<tr><td>이름</td> <td> " + name + "</td></tr>");
		out.println("<tr><td>생년월일</td> <td> " + birth + "</td></tr>");
		out.println("<tr><td>이메일</td> <td> " + email + "</td></tr>");
		
		out.println("</table></body></html>");
		
		
		
	}

}
