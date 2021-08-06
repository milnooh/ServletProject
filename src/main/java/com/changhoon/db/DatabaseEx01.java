package com.changhoon.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.changhoon.common.MysqlService;

@WebServlet("/db/ex01")
public class DatabaseEx01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
//		MysqlService mysqlService = new MysqlService();
//		mysqlService.connect();
		
		// 싱글턴
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String insertQuery = "INSERT INTO `used_goods`\r\n"
				+ "(`title`, `price`, `description`, `sellerId`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE ('고양이간식 팝니다.', 2000, '저희 고양이가 까다로워서 안먹어요', 5, now(), now()); ";
		
//		int count = mysqlService.update(insertQuery);
		
//		out.println("삽입성공" + count + "<br>");
		
		String selectQuery = "SELECT * FROM used_goods";
		ResultSet result = mysqlService.select(selectQuery);
		
		try {
			while(result.next()) {
				out.println(result.getInt("id"));
				out.println(result.getString("title"));
				out.println(result.getInt("price") + "<br>");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
