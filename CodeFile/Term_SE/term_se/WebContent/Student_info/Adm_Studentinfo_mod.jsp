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
	<form method="post" action="Adm_Studentinfo_mod_pro.jsp">
		
		������ �й� : <input type="text" name="id" maxlength="20"><br/>
		�̸� : <input type="text" name="name" maxlength="40"><br/>
		���� : <input type="text" name="major" maxlength="20""><br/>
		�̹��� : <input type="text" name="image" maxlength="20"><br/>
		��ȭ ��ȣ : <input type="text" name="phone" maxlength="20"><br/>
		�ֹε�� ��ȣ : <input type="text" name="priv" maxlength="20""><br/>
		�ּ� : <input type="text" name="addr" maxlength="10"><br/>
		<input type="submit" value="�Է¿Ϸ�">
</body>
<input type="button" id="button1" onclick="button1_click();" value="���ư���" ></br>

<script>
function button1_click() {
	 location.href = "Adm_Studentinfo.jsp"; 
}
</script>
</html>