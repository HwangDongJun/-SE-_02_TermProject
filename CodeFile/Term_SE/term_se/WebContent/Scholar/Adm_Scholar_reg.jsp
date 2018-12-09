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
	<h2> 장학생 등록 </h2>
		<form method="post" action="Adm_Scholar_reg_pro.jsp">
		학번 : <input type="text" name="id" maxlength="20"><br/>
		이름 : <input type="text" name="name" maxlength="40"><br/>
		유형 : <input type="text" name="type" maxlength="20"><br/>
		금액 : <input type="number" name="money" maxlength="10"><br/>
		<input type="submit" value="입력완료">
</body>
<input type="button" id="button1" onclick="button1_click();" value="돌아가기" ></br>

<script>
function button1_click() {
	 location.href = "Adm_Scholar.jsp"; 
}
</script>
</html>