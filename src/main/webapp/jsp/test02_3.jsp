<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>현재 날짜 <%=request.getParameter("year") %>년 
	<%=request.getParameter("month") %>월 
	<%=request.getParameter("day") %>일</h1>
</body>
</html>