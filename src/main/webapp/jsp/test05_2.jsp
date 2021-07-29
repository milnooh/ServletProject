<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int number = Integer.parseInt(request.getParameter("number"));
	String[] transeformArray = request.getParameterValues("transeform");
	
	String result = "";
	
	for(int i = 0; i < transeformArray.length; i++) {
		if(transeformArray[i].equals("inch")) {
			result += (number * 0.39) + "in<br>";
		} else if(transeformArray[i].equals("yard")) {
			result += (number * 0.01) + "yd<br>";
		} else if(transeformArray[i].equals("feet")) {
			result += (number * 0.032) + "ft<br>";
		} else if(transeformArray[i].equals("meter")) {
			result += (number * 0.01) + "m<br>";
		}
	}
	
	%>
	<h2>변환 결과</h2>
	<b><%=number %>cm</b>
	<hr>
	<b><%=result %></b>
	
	
	
</body>
</html>