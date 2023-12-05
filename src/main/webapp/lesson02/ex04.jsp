<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>제어문 사용</title>
</head>
<body>
	<%
		// Map을 table로 표현하기
		// {"Korean"=85, "English"=72, "Math"=90, "Science"=100}
		
		Map<String, Integer> scoreMap = new HashMap<>();
		scoreMap.put("Korean", 85);
		scoreMap.put("English", 72);
		scoreMap.put("Math", 90);
		scoreMap.put("Science", 100);
	%>
	
	<table border="1">
	<%
		Iterator<String> iter = scoreMap.keySet().iterator();
		while(iter.hasNext()) {
			String key = iter.next(); // 과목명 = 키
	%>
		<tr>
			<th>
				<%
					if (key.equals("Korean")) {
						out.print("국어");
					} else if (key.equals("English")) {
						out.print("영어");
					} else if (key.equals("Math")) {
						out.print("수학");
					} else if (key.equals("Science")) {
						out.print("과학");
					}
				%>
			</th>
			<td><%= scoreMap.get(key) %></td>
		</tr>
	<%
		}	
	%>
	</table>
	
</body>
</html>