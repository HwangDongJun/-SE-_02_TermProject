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
	<h2> ���ǰ�ȹ�� ���� </h2>
		<form method="post" action="Adm_Subject_plan_mod_pro.jsp">

	�м���ȣ : <input type="text" name="sub_num"><br/>
	������ �� : <input type="text" name="sub_name"><br/>
	�����а� : <input type="text" name="major"><br/>
	�����б� : <input type="text" name="date"><br/>
	�����ü� �� �� : <input type="text" name="p_h_e"><br/>
	��米�� " <input type="text" name="prof_name"><br/>
	�����Ҽ� : <input type="text" name="prof_major"><br/>
	�а���ȭ : <input type="text" name="major_tel"><br/>
	��米����ȭ : <input type="text" name="prof_tel"><br/>
	��米��E-MAIL : <input type="text" name="prof_email"><br/>
	��뿪�� : <input type="text" name="anticipate"><br/>
	�������� : <input type="text" name="class_info"><br/>
	�����н����� : <input type="text" name="pre_study"><br/>
	�������(%) : <input type="text" name="method"><br/>
	�򰡹��(%) : <input type="text" name="evaluation"><br/>
	������ǥ : <input type="text" name="object"><br/>
	����� : <input type="text" name="operate"><br/>
	�н� �� ��Ȱ�� : <input type="text" name="std_eva"><br/>
	���� ���� : <input type="text" name="rule"><br/>
	���� �� ������ : <input type="text" name="reference"><br/>
	������ ���� ��ȹ : <input type="text" name="week_sche"><br/>
	������� : <input type="text" name="ps"><br/>
	����н� �н����� �����ȳ� : <input type="text" name="disabil_info"><br/>
		
		<input type="submit" value="�Է¿Ϸ�">
</body>
<input type="button" id="button1" onclick="button1_click();" value="���ư���" ></br>

<script>
function button1_click() {
	 location.href = "Adm_Subject_plan.jsp"; 
}
</script>
</html>