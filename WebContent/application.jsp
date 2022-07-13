<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String appPath = application.getContextPath();
	String filePath = application.getRealPath("application.jsp");
	String serverInfo = application.getServerInfo();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	웹 애플리케이션이 컨텍스트 패스명<br>
	<b><%=appPath %></b><hr>
	웹 애플리케이션의 파일 경로명<br>
	<b><%=filePath %></b><hr>
	컨테이너의 이름과 버전 변환<br>
	<b><%=serverInfo %></b><br>
</body>
</html>