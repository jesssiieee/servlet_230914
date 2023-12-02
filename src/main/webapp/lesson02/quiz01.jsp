<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<%-- 1번 --%>
	<%!	
		// 선언문 
		public int sum(int n) {
			int sum = 0;
			for(int i = 1; i <= n; i++) {
				sum += i;
			}
			return sum;
		}
	 %>
	 
	 <h1>1부터 50까지의 합은 <%= sum(50) %>입니다.</h1>
	 
	 <%-- 2번 --%>
	 <%
	 	int[] scores = {80, 90, 100, 95, 80};
	 	int sum = 0;
	 	double avg = 0;
	 	
	 	for(int i = 0; i < scores.length; i++) {
	 		sum += scores[i];
	 	}
	 	avg = sum / (double)scores.length;
	 %>
	 
	 <h1>평균 점수는 <%= avg %>입니다.</h1>
	 
	 <%-- 3번 --%>
	 <%
	 List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	 
	 int score = 0;
	 for(int i = 0; i < scoreList.size(); i++) {
		 if (scoreList.get(i).equals("O")) {
			 score += 100/scoreList.size();
		 }
	 }
	 %>
	 <h1>채점 결과는 <%= score %>입니다. </h1>
	 
	 
	 <%-- 3번 --%>
	 <% 
		 String birthDay = "20010820";
		 String yearStr = birthDay.substring(0, 4);
		 /* out.print(yearStr); */
		 int age = 2023 - Integer.parseInt(yearStr);
	 %>
	 <h1><%= birthDay %>의 나이는 <%= age %> 입니다.</h1>
	 
	 
</body>
</html>