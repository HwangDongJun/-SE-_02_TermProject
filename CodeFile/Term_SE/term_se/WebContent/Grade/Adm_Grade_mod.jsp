<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>

</head>

<body>
	<h2> ���� ���� </h2>
		<form method="post" action="Adm_Grade_mod_pro.jsp">

		�й� : <input type="text" name="id" maxlength="20"><br/>
		�м���ȣ : <input type="text" name="num" maxlength="20"><br/>
		������ : <input type="text" name="subject" maxlength="20"><br/>
		�⵵/�б� : <input type="text" name="date" maxlength="20"><br/>
		���� : <input type="text" name="point" maxlength="20"><br/>
		���/���� : <input type="text" name="score" maxlength="20"><br/>
		���� ��: <input type="text" name="grade" maxlength="20"><br/>
		�̼�����: <input type="text" name="cur" maxlength="10"><br/>
		
		
		<input type="submit" value="�Է¿Ϸ�">
</body>
<input type="button" id="button1" onclick="button1_click();" value="���ư���" ></br>

<script>
function button1_click() {
	 location.href = "Adm_Grade.jsp"; 
}
</script>
</html>