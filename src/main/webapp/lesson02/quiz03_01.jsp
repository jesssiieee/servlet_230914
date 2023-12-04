<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Quiz03_01</title>
	<!-- bootstrap CDN 주소 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int height = Integer.parseInt(request.getParameter("height"));
		int weight = Integer.parseInt(request.getParameter("weight"));
		
		double BMI = (double) (weight / ((height / 100.0) * (height / 100.0)));
		
		String answer = "";
		if (BMI <= 20 ) {
			answer = "저체중";
		} else if (BMI >= 21 && BMI <= 25) {
			answer = "정상";
		} else if (BMI >= 26 && BMI <= 30) {
			answer = "과체중";
		} else if (BMI >= 31) {
			answer = "비만";
		}
	
	%>

	<div class="container">
		<h2><b>BMI</b> 측정 결과</h2>
		<p class="display-3">당신은 <span class="text-info"><%=answer %></span> 입니다.</p>
		<small>BMI 수치: <%= BMI %></small>
	</div>
	
	
</body>
</html>