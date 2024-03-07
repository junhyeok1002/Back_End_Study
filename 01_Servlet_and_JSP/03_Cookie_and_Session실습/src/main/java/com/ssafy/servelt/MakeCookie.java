package com.ssafy.servelt;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/make")
public class MakeCookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key = request.getParameter("key");
		String value = request.getParameter("value");
		
		// 쿠키를 생성한다.
		Cookie cookie = new Cookie(key, value);
		
		// 쿠키 유효기간 (만료 단위) : 초단위 
		// 쿠키는 remove라는 메서드가 없음, 쿠키 삭제하려면 => cookie.setMaxAge(0); 
		cookie.setMaxAge(60);
		
		// 사용자에게 돌려줘! 
		response.addCookie(cookie);
		response.sendRedirect(request.getContextPath()+"/02_CookieResult.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
