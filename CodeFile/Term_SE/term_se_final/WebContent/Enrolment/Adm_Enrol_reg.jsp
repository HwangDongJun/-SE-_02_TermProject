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
	<h2> ���� ����  ��� </h2>
		<form method="post" action="Adm_Enrol_reg_pro.jsp">

		�м���ȣ(xx-xxxx) : <input type="text" name="num" maxlength="20" required pattern="[0-9]{2}-[0-9]{4}"><br/>
		���� ���� : <input type="text" name="size" maxlength="20" required pattern="[0-9]*"><br/>
		������ �� : <input type="text" name="name" maxlength="20" required><br/>
		���� ���� : <select name ="day" required>
 				 <option>Monday</option>
  				 <option>Tuesday</option>
				  <option>Wednesday</option>
				  <option>Thursday</option>
				  <option>Friday</option>
				</select><br/>
		���� ���� �ð�(24h) : <input type="number" name="starttime" min="0" max="24" required><br/>
		���� ���� �ð�(24h) : <input type="number" name="time" min = "0" max = "24" required><br/>
		���ǽ� : <input type="text" name="room" maxlength="20" required><br/>
		��米��: <input type="text" name="prof" maxlength="20" required><br/>
		
		
		<input type="submit" value="�Է¿Ϸ�">
</body>
<input type="button" id="button1" onclick="button1_click();" value="���ư���" ></br>

<script>
function button1_click() {
	 location.href = "Adm_Enrol.jsp"; 
}
</script>
</html>