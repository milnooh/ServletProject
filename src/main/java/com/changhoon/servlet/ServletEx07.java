package com.changhoon.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex07")
public class ServletEx07 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String adress = request.getParameter("adress");
		String creditCard = request.getParameter("credit_card");
		String price = request.getParameter("price");
		
		
		if(adress.contains("서울시") == false) {
			out.println("<html><head><title>Get_Method</title></head><body>배달 불가 지역입니다.</body></html>");
		} else if(adress.contains("신한카드")) {
			out.println("<html><head><title>Get_Method</title></head><body>결제 물가 카드 입니다..</body></html>");
		} else {
			out.println("<html><head><title>Get_Method</title></head><body>"
					+ "<h3>" + adress + " 베달 준비중</h3><hr>"
					+ "결재금액 : " + price +"</body></html>");
		}
		
		
		
		
	}

}
