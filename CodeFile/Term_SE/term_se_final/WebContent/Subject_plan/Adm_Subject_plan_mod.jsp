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

	�м���ȣ(xx-xxxx) : <input type="text" name="sub_num" required pattern = "[0-9]{2}-[0-9]{4}"><br/>
	������ �� : <input type="text" name="sub_name"required><br/>
	�����а� : <input type="text" name="major"required><br/>
	�����б�(20xx/x) : <input type="text" name="date"required pattern = "20[0-9]{2}/[0-9]"><br/>
	�����ü� �� �� : <input type="text" name="p_h_e"required><br/>
	��米�� " <input type="text" name="prof_name"required><br/>
	�����Ҽ� : <input type="text" name="prof_major"required><br/>
	�а���ȭ(xxx-xxx-xxxx) : <input type="text" name="major_tel"required pattern = "[0-9]{3}-[0-9]{3}-[0-9]{4}"><br/>
	��米����ȭ(xxx-xxxx-xxxx) : <input type="text" name="prof_tel"required pattern = "[0-9]{3}-[0-9]{4}-[0-9]{4}"><br/>
	��米��E-MAIL : <input type="email" name="prof_email"required ><br/>
	��뿪�� : <input type="text" name="anticipate"required><br/>
	�������� : <input type="text" name="class_info"required><br/>
	�����н����� : <input type="text" name="pre_study"required><br/>
	�������(%) : <input type="text" name="method"required><br/>
	�򰡹��(%) : <input type="text" name="evaluation"required><br/>
	������ǥ : <input type="text" name="object"required><br/>
	����� : <input type="text" name="operate"required><br/>
	�н� �� ��Ȱ�� : <input type="text" name="std_eva"required><br/>
	���� ���� : <input type="text" name="rule"required><br/>
	���� �� ������ : <input type="text" name="reference"required><br/>
	������ ���� ��ȹ : <input type="text" name="week_sche"required><br/>
	������� : <input type="text" name="ps"required><br/>
	����н� �н����� �����ȳ� : <input type="text" name="disabil_info"required><br/>
		
		<input type="submit" value="�Է¿Ϸ�">
</body>
<input type="button" id="button1" onclick="button1_click();" value="���ư���" ></br>

<script>
function button1_click() {
	 location.href = "Adm_Subject_plan.jsp"; 
}
</script>
</html>