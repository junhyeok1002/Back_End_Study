<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 화면을 보여줄 것이 아니기 때문에 다 지워버렸다. 로그인 처리 용도만 할 친구 !--%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	
	// 실제로는 id / pw를 이용하여 DB에 저장되어있는 유저가 맞는지를 체크
	// 하지만 db없으니 야매로 만들자
	if(id.equals("ssafy") && pw.equals("1234")){
		// 로그인 성공
		// 세션에 정보를 저장할것임
		
		// request.getCookies() 반복문 돌면서 JSESSIONID 쿠키를 찾아서 값을 이용해서 메모리 접근을 해야하나?
		// 아니다. 아래처럼 하면 한번에 가져올 수 있음
		// HttpSession my_session = request.getSession();
		// my_session.setAttribute("id", id);
		
		// 근데 사실 위에처럼 할 필요도 없음, JSP가 Session 영역을 기본저으로 접근할 수 있게해줌
		// Servlet에서는 위에처럼 쓰는 것이 맞음
		session.setAttribute("id", id); 
		
		response.sendRedirect("08_Main.jsp");
		// 아래처럼도 보낼 수 있음 => Main을 보여주지만 url은 07_LoginForm로 되어 있다.
		// request.getRequestDispatcher("08_Main.jsp").forward(request, response);
		
	}else{
		// 로그인 실패
		response.sendRedirect("07_LoginForm.jsp");
	}
	
%>

