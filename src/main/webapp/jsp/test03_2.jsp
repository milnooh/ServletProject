<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
	<div class="display-4">
		<h1>당신은 <span class="text-info"><%=getBmi(request.getParameter("weight"), request.getParameter("height"))%></span> 입니다.</h1>
	</div>

</body>
</html>