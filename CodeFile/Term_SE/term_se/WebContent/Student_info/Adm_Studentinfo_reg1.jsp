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
	<h2> 학번 생성 </h2>
		<form method="post" action="Adm_Studentinfo_reg2.jsp">

		전공 : <input type="text" name="major" maxlength="20"><br/>
		주민등록 번호 : <input type="text" name="priv" maxlength="20"><br/>
		입학 년도 : <input type="number" name="ent" maxlength="10"><br/>
		
		<input type="submit" value="입력완료">
</body>
<input type="button" id="button1" onclick="button1_click();" value="돌아가기" ></br>

<script>
function button1_click() {
	 location.href = "Adm_Studentinfo.jsp"; 
}
</script>
</html>