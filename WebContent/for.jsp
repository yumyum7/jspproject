<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>1부터<%=request.getParameter("num")%>까지 자연수 합 구하기</h1><br>
<%
	int num = Integer.parseInt(request.getParameter("num")); //데이터를 확용하기 위해서 
	
	int sum = 0;
	int i;
	for(i=1; i<num; i++){
		sum +=i;
		out.print(i+"+");
	}	
	sum+=i;
	out.print(num + "=" + sum);
	
%>
</body>
</html>