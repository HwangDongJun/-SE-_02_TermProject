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
	<h2> �й� ���� </h2>
		<form method="post" action="Adm_Studentinfo_reg2.jsp">

		���� : <input type="text" name="major" maxlength="20" required><br/>
		�ֹε�� ��ȣ(-����) : <input type="text" name="priv" maxlength="20"required pattern = "[0-9]{6}-[0-9]{7}" ><br/>
		���� �⵵ (20xx): <input type="number" name="ent" maxlength="10"required pattern = "20[0-9]{2}"><br/>
		
		<input type="submit" value="�Է¿Ϸ�">
</form>
<input type="button" id="button1" onclick="button1_click();" value="���ư���" ></br>

	�а� ����Ʈ</br>
	Advertising</br>
	Animal Science</br>
	Anthropology</br>
	Biochemistry</br>
	Molecular Biology</br>
	Chemical Engineering</br>
	Chemistry</br>
	Civil Engineering</br>
	Computer Science</br>
	Criminal Justice</br>
	Economics</br>
	Electrical Engineering</br>
	Entomology</br>
	Food Science</br>
	Geography</br>
	History</br>
	Mathematics</br>
	Physiology</br>
	Zoology</br>
</body>
<script>
function button1_click() {
	 location.href = "Adm_Studentinfo.jsp"; 
}
</script>
</html>