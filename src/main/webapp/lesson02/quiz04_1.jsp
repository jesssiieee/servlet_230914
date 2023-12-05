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
        <h3><%= cm %>cm</h3>
        <hr>

        <%
            if (unitArr != null) {
                for (String unit : unitArr) {
                    double answer = 0;
                    String unitName = "";

                    if (unit.equals("inch")) {
                        answer = (double) cm / 2.54;
                        unitName = "in";
                    } else if (unit.equals("yard")) {
                        answer = (double) cm / 91.44;
                        unitName = "yd";
                    } else if (unit.equals("feet")) {
                        answer = (double) cm / 30.48;
                        unitName = "ft";
                    } else if (unit.equals("meter")) {
                        answer = (double) cm / 100.0;
                        unitName = "m";
                    }

                    %>
                    <h2><%= answer %> <%= unitName %></h2>
                    <%
                }
            }
        %>
    </div>

</body>
</html>
