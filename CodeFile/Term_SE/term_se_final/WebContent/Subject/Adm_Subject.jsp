<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
</head>
<body>
	<h2> 교과목 관리 </h2>
	<input type="button" id="button1" onclick="button1_click();" value="교과목 조회" ></br>
	<input type="button" id="button2" onclick="button2_click();" value="교과목 등록" ></br>
	<input type="button" id="button3" onclick="button3_click();" value="교과목 수정" ></br>
	<input type="button" id="button4" onclick="button4_click();" value="교과목 삭제" ></br>
	<input type="button" id="button5" onclick="button5_click();" value="돌아 가기" >

</body>

<script>
function button1_click() {
	 location.href = "Adm_Subject_view.jsp"; 
}
function button2_click() {
	 location.href = "Adm_Subject_reg.jsp"; 
}
function button3_click() {
	 location.href = "Adm_Subject_mod.jsp"; 
}
function button4_click() {
	 location.href = "Adm_Subject_del.jsp"; 
}
function button5_click() {
	 location.href = "../Admin.jsp"; 
}
</script>
</html>