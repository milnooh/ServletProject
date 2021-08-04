<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%
		Calendar today = Calendar.getInstance();
		out.println(today);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		out.println(formatter.format(today.getTime()) + "<br>");
		
		// 날짜 연산
		Calendar calendar = Calendar.getInstance();
		// 132일 전으로 돌아가자
		calendar.add(Calendar.DATE, -132);
		// 205일 이후
		calendar.add(Calendar.DATE, 250);
		
		// 3개월 이후
		calendar.add(Calendar.MONTH, 8);
		calendar.add(Calendar.YEAR, 10);
				
		out.println(formatter.format(calendar.getTime()) + "<br>");
		
		// 두 날짜를 비교
		// 기준이 되는 날자와 파라미터에 전달ㄷ 되는 날짜 비교
		// 기준이 되는 날짜가 더 작을 때 -1
		// 기준이 되는 날짜가 더 컷을 때 1
		// 두 날짜가 같을 때 1
		int result = today.compareTo(calendar);
		out.println(result + "<br>");
		if(result > 0) {
			out.println("오늘이 더 크다.");
		} else if(result < 0) {
			out.println("오늘이 더 작다.");
		}else {
			out.println("같다.");
		}
		
	%>
	
	
</body>
</html>