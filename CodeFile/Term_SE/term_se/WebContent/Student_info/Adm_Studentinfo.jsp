<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>
</head>
<body>
	<h2> ���� ���� </h2>
	<input type="button" id="button1" onclick="button1_click();" value="���� ��ȸ" ></br>
	<input type="button" id="button2" onclick="button2_click();" value="���� ���" ></br>
	<input type="button" id="button3" onclick="button3_click();" value="���� ����" ></br>
	<input type="button" id="button4" onclick="button4_click();" value="���� ����" ></br>
	<input type="button" id="button5" onclick="button5_click();" value="���� ����" >

</body>

<script>
function button1_click() {
	 location.href = "Adm_Studentinfo_view.jsp"; 
}
function button2_click() {
	 location.href = "Adm_Studentinfo_reg1.jsp"; 
}
function button3_click() {
	 location.href = "Adm_Studentinfo_mod.jsp"; 
}
function button4_click() {
	 location.href = "Adm_Studentinfo_del.jsp"; 
}
function button5_click() {
	 location.href = "../Admin.jsp"; 
}
</script>
</html>