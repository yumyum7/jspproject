<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String age=request.getParameter("age");
 	String name=(String)request.getAttribute("name"); //반환타입이 object이므로  문자열로 변환했다.
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor=pink>
forward방식 으로 이동된 페이지 <br>
	나이 : <%=age %>
	이름 : <%=name %>
<!-- 마지막  페이지의 주소로 변경되지않는다.   -->
</body>
</html>