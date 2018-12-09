<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>

</head>
<%
	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");
	
%>

<body>
	<h2> 학적 수정 </h2>
	<form method="post" action="Std_Studentinfo_mod_pro.jsp">
		
		 학번 : <input type="text" name="ids" value="<%=id %>" maxlength="20" disabled><br/>
		이미지 : <input type="text" name="image" maxlength="20"><br/>
		전화 번호 : <input type="text" name="phone" maxlength="20"><br/>
		주소 : <input type="text" name="addr" maxlength="10"><br/>
		<input type="submit" value="입력완료">
		
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		<input type="submit" id="button1" value="돌아가기" formaction = "Std_Studentinfo.jsp" >
	</form>

</body>
</html>