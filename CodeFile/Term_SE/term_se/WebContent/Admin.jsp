<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>
</head>
<body>
	<h2> ������ </h2>
	<input type="button" id="button1" onclick="button1_click();" value="���� ����" >
	<input type="button" id="button2" onclick="button2_click();" value="������ ����" >
	<input type="button" id="button3" onclick="button3_click();" value="���� ����" >
	<input type="button" id="button4" onclick="button4_click();" value="���� ����" >
	<input type="button" id="button5" onclick="button5_click();" value="���ǰ�ȹ�� ����" >
	<input type="button" id="button6" onclick="button6_click();" value="���л� ����" >
</body>
<script>
function button1_click() {
	 location.href = "./Student_info/Adm_Studentinfo.jsp"; 
}
function button2_click() {
	 location.href = "./Subject/Adm_Subject.jsp"; 
}
function button3_click() {
	 location.href = "./Grade/Adm_Grade.jsp"; 
}
function button4_click() {
	 location.href = "./Enrolment/Adm_Enrol.jsp"; 
}
function button5_click() {
	 location.href = "./Subject_plan/Adm_Subject_plan.jsp"; 
}
function button6_click() {
	 location.href = "./Scholar/Adm_Scholar.jsp"; 
}

</script>
</html>