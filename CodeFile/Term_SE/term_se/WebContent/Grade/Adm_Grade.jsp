<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>肺弊牢</title>
</head>
<body>
	<h2> 己利 包府 </h2>
	<input type="button" id="button1" onclick="button1_click();" value="己利 炼雀" ></br>
	<input type="button" id="button2" onclick="button2_click();" value="己利 殿废" ></br>
	<input type="button" id="button3" onclick="button3_click();" value="己利 荐沥" ></br>
	<input type="button" id="button4" onclick="button4_click();" value="己利 昏力" ></br>
	<input type="button" id="button5" onclick="button5_click();" value="倒酒 啊扁" >

</body>

<script>
function button1_click() {
	 location.href = "Adm_Grade_view.jsp"; 
}
function button2_click() {
	 location.href = "Adm_Grade_reg.jsp"; 
}
function button3_click() {
	 location.href = "Adm_Grade_mod.jsp"; 
}
function button4_click() {
	 location.href = "Adm_Grade_del.jsp"; 
}
function button5_click() {
	 location.href = "../Admin.jsp"; 
}
</script>
</html>