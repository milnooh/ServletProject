<%@page import="java.sql.ResultSet"%>
<%@page import="com.changhoon.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	String query = "SELECT * FROM `web_site`";
	ResultSet result = mysqlService.select(query);
%>

<div>
	<table border="1">
		<thead>
			<th>사이트</th>
			<th>사이트 주소</th>
			<th>삭제</th>
		</thead>
		<tbody>
		<% while(result.next()){
			%>
			<tr>
				<td><%=result.getString("name") %></td>
				<td><a href="<%=result.getString("url") %>"><%=result.getString("url") %></a></td>
				<td><a href="/db/test02_delete?id=<%=result.getInt("id") %>">삭제</a></td>			
			</tr>		
			<%
		}
		%>
		</tbody>
	</table>
</div>


</body>
</html>