<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
		SimpleDateFormat timeFormat = new SimpleDateFormat("HH시 mm분 ss초");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일");
		Date today = new Date();
		
		private String time = timeFormat.format(today);
		private String date = dateFormat.format(today);
	%>

	
	<%!
		public String getDates(String day) {
			String dates = null;
			if(day.equals("date")){
				dates = date;
			} else if(day.equals("time")){
				dates = time;
			}
			return dates;
		}
		
	%>
	

	<h1><%=getDates(request.getParameter("link")) %></h1>
	
</body>
</html>