<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>\
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	public String getBmi(String weight, String height) {
		String state = null;
		
		int w = Integer.parseInt(weight);
		int h = Integer.parseInt(height);
		double bmi = w / ((h / 100.0) * (h / 100.0));
		
		if(bmi <= 20) {
			state = "저체중";
		} else if(bmi > 20 && bmi <=25) {
			state = "정상";
		} else if(bmi > 25 && bmi <=30) {
			state = "과체중";
		} else {
			state = "비만";
		}
		
		return state;
	}	
	%>
	
	<h2>BMI 측정 결과</h2>
	<h1>당신은 <%=getBmi(request.getParameter("weight"), request.getParameter("height"))%> 입니다.</h1>

</body>
</html>