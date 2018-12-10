<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>


</head>
<%
	request.setCharacterEncoding("euc-kr");

	Grade grd = new Grade();
	grade_Node gn = new grade_Node();
	

	String id = request.getParameter("id");
	
%>
<body>
	<h2> 강의 계획서 조회 </h2>
	<form action ="Std_Subject_plan_view_pro.jsp">
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		학수번호(xx-xxxx): <input type="text" id="num" name="num" required pattern="[0-9a-zA-Z]{2}-[0-9a-zA-Z]{4}">
		
		<input type="submit" id="button1" value="입력" ></br>
	</form>
	
	<form>
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		<input type="submit" id="button1" formaction="../User.jsp" value="돌아가기" >
	</form>
</body>

</html>