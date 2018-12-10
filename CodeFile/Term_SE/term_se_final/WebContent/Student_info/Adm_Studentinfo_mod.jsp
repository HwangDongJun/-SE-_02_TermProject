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
	<h2> 학적 수정 </h2>
	<form method="post" action="Adm_Studentinfo_mod_pro.jsp">
		
		수정할 학번 : <input type="text" name="id" maxlength="20" required><br/>
		이름 : <input type="text" name="name" maxlength="40"required><br/>
		전공 : <input type="text" name="major" maxlength="20"required><br/>
		이미지 : <input type="text" name="image" maxlength="20"required><br/>
		전화 번호 : <input type="text" name="phone" maxlength="20"required pattern = "[0-9]{3}-[0-9]{4}-[0-9]{4}"><br/>
		주민등록 번호(-포함) : <input type="text" name="priv" maxlength="20""required pattern = "[0-9]{6}-[0-9]{7}"><br/>
		주소 : <input type="text" name="addr" maxlength="20"required><br/>
		<input type="submit" value="입력완료">
		</form>
</body>
<input type="button" id="button1" onclick="button1_click();" value="돌아가기" ></br>

<script>
function button1_click() {
	 location.href = "Adm_Studentinfo.jsp"; 
}
</script>
</html>