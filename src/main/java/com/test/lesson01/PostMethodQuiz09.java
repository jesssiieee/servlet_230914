package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");

		out.print("<html><head><title>입사지원서</title></head><body>");
		
		out.print("<b>" + name + "</b>님 지원 완료 되셨습니다");
		out.print("<br><h3>지원내용</h3>" + introduce);
		
		
		out.print("</body></html>");

	}
}
