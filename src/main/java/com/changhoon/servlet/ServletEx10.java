package com.changhoon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex10")
public class ServletEx10 extends HttpServlet {
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		String userId = userMap.get("id");
		String userPassword = userMap.get("password");
		String userName = userMap.get("name");
		
		out.println("<html><head><title>Post Method2</title></head><body>");
		if(id.equals(userId) == false) {
			out.println("id가 일치하지 않습니다.");
		} else if(password.equals(userPassword) == false) {
			out.println("password가 일치하지 않습니다.");
		} else {
			out.println(userName + "님 환영합니다.");
		}
		out.println("</body></html>");
		
	}

}
