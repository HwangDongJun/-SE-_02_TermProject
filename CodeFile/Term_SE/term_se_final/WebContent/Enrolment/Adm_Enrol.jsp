<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
</head>
<body>
	<h2> 수강 관리 </h2>
	<input type="button" id="button1" onclick="button1_click();" value="수강 조회" ></br>
	<input type="button" id="button2" onclick="button2_click();" value="수강 등록" ></br>
	<input type="button" id="button4" onclick="button3_click();" value="수강 삭제" ></br>
	<input type="button" id="button5" onclick="button4_click();" value="돌아 가기" >

</body>

<script>
function button1_click() {
	 location.href = "Adm_Enrol_view.jsp"; 
}
function button2_click() {
	 location.href = "Adm_Enrol_reg.jsp"; 
}
function button3_click() {
	 location.href = "Adm_Enrol_del.jsp"; 
}

function button4_click() {
	 location.href = "../Admin.jsp"; 
}
</script>
</html>