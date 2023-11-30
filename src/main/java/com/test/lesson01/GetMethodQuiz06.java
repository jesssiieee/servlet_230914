package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz06 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		PrintWriter out = response.getWriter();
		
		int num1 = Integer.parseInt(request.getParameter("number1")); // 1500
		int num2 = Integer.parseInt(request.getParameter("number2")); // 70
		
		out.print( "{"
				+ "\"addtion\":" + (num1+num2) + ",\n" +
				"\"subtraction\":" + (num1-num2) + ",\n" +
				"\"multiplication\":" + (num1*num2) + ",\n" +
				"\"division\":" + (num1/num2) + "}"
		);
	}
}
