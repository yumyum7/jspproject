<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
String id = "pinksung";
String pwd="1234";
String name= "성윤정";
if(id.equals(request.getParameter("id"))&&pwd.equals(request.getParameter("pwd")) ){
	response.sendRedirect("main.jsp?name="+  //request에 저장된다. 
								URLEncoder.encode(name, "UTF-8")); 
			//	URLEncoder.encode(name, "UTF-8"))
			//직접 한글을 쿼리 스트링으로 만들어 페이지로 전송할 경우에는 인코딩 과정을 거쳐야 한다. 
}
else{
	response.sendRedirect("loginForm.jsp");
}
		//페이지 이동 
		//리다이렉트 - url 주소가 바뀐다. 객체의 제어권을 못 넘긴다. 
		//포워드       - url 주소가 안바뀐다. 객체의 제어권을 넘긴다. 
		
		//    A(전송)      ------------------------>    B (리턴타입)
		//  <form>    ------------------------>  request.getParameter()
		// request.setAttribute() ------------>  request.getAttribute();
		// request.setAttribute() ------------>  request.(Integer)getAttribute();
		// request.setAttribute() ------------>  request.(String)getAttribute();
		
%>
