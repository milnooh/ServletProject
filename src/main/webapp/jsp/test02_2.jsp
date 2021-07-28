<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>현재 시간 <%=request.getParameter("hour") %>시 
	<%=request.getParameter("minute") %>분 
	<%=request.getParameter("second") %>초</h1>
</body>
</html>