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
	<h2> 교과목 수정 </h2>
	<form method="post" action="Adm_Subject_mod_pro.jsp">
		
		
		교과목 이름 : <input type="text" name="name" maxlength="20"><br/>
		학수번호 : <input type="text" name="num" maxlength="20"><br/>
		개설학과 : <input type="text" name="major" maxlength="20"><br/>
		개설학기 : <input type="text" name="date" maxlength="20"><br/>
		담당 교수 : <input type="text" name="prof" maxlength="20"><br/>
		수강 정원: <input type="text" name="size" maxlength="20"><br/>
		학점: <input type="number" name="point" maxlength="10"><br/>
		
		<input type="submit" value="입력완료">
</body>
<input type="button" id="button1" onclick="button1_click();" value="돌아가기" ></br>

<script>
function button1_click() {
	 location.href = "Adm_Subject.jsp"; 
}
</script>
</html>