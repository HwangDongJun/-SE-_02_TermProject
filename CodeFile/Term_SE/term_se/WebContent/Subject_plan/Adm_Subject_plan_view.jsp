<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.ArrayList"%>
<%@ page import= "java.util.HashMap"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>


</head>

<body>
<h2> ���� ��ȹ�� ��ȸ </h2>
		<form method="post" action="Adm_Subject_plan_view_pro.jsp">

		�м���ȣ : <input type="text" name="num" maxlength="20"><br/>
		
		<input type="submit" value="�Է¿Ϸ�">
	<input type="button" id="button1" onclick="button1_click();" value="���ư���" ></br>


</body>

<script>
function button1_click() {
	 location.href = "Adm_Subject_plan.jsp"; 
}
</script>
</html>