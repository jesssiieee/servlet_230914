<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>길이 변환 결과</title>
</head>
<body>

	<%
		int cm = Integer.parseInt(request.getParameter("cm"));
		String[] unitArr = request.getParameterValues("unit");
	%>

	<div class="container">
		<h1>길이 변환 결과</h1>
		<%
			if (unitArr != null) {
				double answer = 0;
				for(int i = 0; i < unitArr.length; i++) {
					if (unitArr[i].equals("inch")) {
						answer = (double) cm / 2.54;
						out.print(answer);
					} else if (unitArr[i].equals("yard")) {
						answer = (double) cm / 91.44;
						out.print(answer);
					} else if (unitArr[i].equals("feet")) {
						answer = (double) cm / 30.48;
						out.print(answer);
					} else if (unitArr[i].equals("meter")) {
						answer = (double) cm / 100.0;
						out.print(answer);
					}
					 
				}
			}
		%>
	</div>
</body>
</html>