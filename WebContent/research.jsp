<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문 조사 결과</title>
<style type="text/css">
	b{
	font-size : 16px;
	}
</style>
</head>
<body>
	<h2>설문 조사 결과</h2>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	out.println("이름 : <b>" + name + "</b><br>");
	
	String gender = request.getParameter("gender");
	out.println("성별 : " );
	if(gender.equals("nale")){
		out.println("<b>남자</b><br>");
	}else{
		out.println("<b>여자</b><br>");
	}
	
	String seasonArr[] = request.getParameterValues("season");
	out.println("당신이 좋아하는 게절은 ");
	for(String season : seasonArr){
		int n = Integer.parseInt(season);
		switch(n){
		case 1: out.println("<b>봄 </b> 입니다.");
		break;
		case 2: out.println("<b>여름 </b> 입니다.");
		break;
		case 3: out.println("<b>가을 </b> 입니다.");
		break;
		case 4: out.println("<b>겨울 </b> 입니다.");
		break;
		}
	}
	%>
	<br>
	<b><a href="javascript:history.go(-1)">다시</a></b>
</body>
</html>