<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Application 영역에 저장된 정보</h1>
	<p><%=application.getAttribute("name")%></p>
	<p><%=application.getAttribute("id")%></p>
	
	<h1>session 영역에 저장된 정보</h1>
	<%
		Enumeration e = session.getAttributeNames();
		while(e.hasMoreElements()){
			String attributeName = (String)e.nextElement(); //nextElement session key값을 가지고온다.
			String attributeValue = (String)session.getAttribute(attributeName); //속성값을 가지고 올수 있다. 
	%>
			<p><%=attributeName%>:<%=attributeValue%></p>
	<%
		} 	
		//주소 : http://localhost:9999/web04/attributeTest3.jsp
		//session은 브라우저가 켜져 있는 동안만 저장 ( 끄고 새로 키면 정보 삭제)
		//Application 은 tomcat이 켜져있는동안만 저장( 끄고 새로키면 정보 삭제 )
	%>
	

</body>
</html>