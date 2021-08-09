<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
</head>
<body>
<h1>즐겨찾기 추가</h1>
	<form method="post" action="/db/test02_insert">
		<lable>사이트명:</lable>
		<br>
		<input type="text" name="name">
		<br>
		<lable>사이트 주소:</lable>
		<br>
		<input type="text" name="url">
		<br>
		<button type="submit">추가</button>
	</form>

</body>
</html>