<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int age = Integer.parseInt(request.getParameter("age"));
if(age<=19){
%>	
	<script type="text/javascript">
		alert("19세 미만이므로 입장 불가능")
		history.go(-1)
	</script>
<% 
}else{
	request.setAttribute("name", "성윤정"); //이코드를 forwardResult.jsp 페이지로 옮겨준다. 
	RequestDispatcher dispatcher 
	= request.getRequestDispatcher("forwardResult.jsp"); //반환타입 object  
	dispatcher.forward(request, response); //실제로 이동하기 위한 코드 
}
%>