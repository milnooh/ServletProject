<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
<%
Calendar cal = Calendar.getInstance();

cal.set(2021,7,1);

int maxday = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);

String korDayOfWeek = "";
switch (dayOfWeek) {
case 1:
	korDayOfWeek = "일";
	break;
case 2:
	korDayOfWeek = "월";
	break;
case 3:
	korDayOfWeek = "화";
	break;
case 4:
	korDayOfWeek = "수";
	break;
case 5:
	korDayOfWeek = "목";
	break;
case 6:
	korDayOfWeek = "금";
	break;
case 7:
	korDayOfWeek = "토";
	break;

}
out.println(korDayOfWeek);

for(int i = 0; i < maxday; i++) {
	
}


%>

</body>
</html>