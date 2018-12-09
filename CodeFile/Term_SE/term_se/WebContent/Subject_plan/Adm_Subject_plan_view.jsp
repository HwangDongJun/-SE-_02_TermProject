<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.ArrayList"%>
<%@ page import= "java.util.HashMap"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>


</head>

<body>
<h2> 강의 계획서 조회 </h2>
		<form method="post" action="Adm_Subject_plan_view_pro.jsp">

		학수번호 : <input type="text" name="num" maxlength="20"><br/>
		
		<input type="submit" value="입력완료">
	<input type="button" id="button1" onclick="button1_click();" value="돌아가기" ></br>


</body>

<script>
function button1_click() {
	 location.href = "Adm_Subject_plan.jsp"; 
}
</script>
</html>