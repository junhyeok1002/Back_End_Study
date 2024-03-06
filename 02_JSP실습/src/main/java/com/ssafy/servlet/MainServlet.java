package com.ssafy.servlet;

import java.io.IOException;

import com.ssafy.dto.Person;
import com.ssafy.manager.PersonManager;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MainServlet
 */
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action =request.getParameter("action");
		
		switch (action) {
			case "regist": {
				doResist(request, response);
				break;
			}
			case "list": {
				doList(request, response);
				break;
			}
		}
	}
		
	private void doList(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.sendRedirect("보내"); 
	}

	private static void doResist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String[] hobbies = request.getParameterValues("hobby");
		
		Person p = new Person(name, age, gender, hobbies);
		
		// 싱글턴 객체 불러오기
		PersonManager pm = PersonManager.getInstance();
		pm.regist(p);
		
		request.setAttribute("person", p);
		
		// 포워드 방식
		RequestDispatcher disp = request.getRequestDispatcher("/12_result.jsp");
		disp.forward(request, response);
		
		// 리다이렉트 방식 => 이렇게 하면 500에러뜸
		// response.sendRedirect(request.getContextPath() + "/12_result.jsp");
		
		
	}

}


