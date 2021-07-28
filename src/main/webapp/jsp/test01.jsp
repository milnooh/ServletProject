<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test01</title>
</head>
<body>
	<!-- 1. 점수들의 평균 구하기 -->
	<%
		int[] scores = {80, 90, 100, 95, 80};
		
		int sum = 0;
		for(int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		
		double average = sum / (double)scores.length;	
	%>
	
	<b> 점수 평균은 <%=average%> 입니다.</b><br>
	
	
	<!-- 2. 채점 결과 -->
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		int score = 0;
		for(String check:scoreList) {
			if(check.equals("O"));
			score += 10;
		}
			
		/*
		int count = 0;
		for(int i = 0; i < scoreList.size(); i++) {
			if(scoreList.get(i).equals("O")) {
				count++;
			}		
		}
		
		int score = 100 * count / scoreList.size();
		*/
	%>
	
	<b> 체점 결과는 <%=score %>점 입니다.</b><br>
	
	
	<!--3. 1부터 n까지의 합계를 구하는 함수 -->
	<%!
		public int getSum(int n) {
			int sum = 0;
			for(int i = 1; i <= n; i++) {
				sum += i;
			}
			return sum;
		}
	%>
	
	<b> 1에서 50까지의 합은 <%=getSum(50)%></b><br>
	
	
	<!-- 4. 나이 구하기 -->
	<%
		String birthDay = "20010820";
	%>
		
	<%!
		public int getAge(String brith) {
			int year = Integer.parseInt(brith.substring(0, 4));	
			return 2021 - year + 1;
		}
		
	%>
	
	<b> <%=birthDay %>의 나이는 <%=getAge(birthDay)%>살 입니다.</b>
	
	
</body>
</html>