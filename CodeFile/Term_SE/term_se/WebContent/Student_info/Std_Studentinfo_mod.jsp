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
	<h2> ���� ���� </h2>
	<form method="post" action="Std_Studentinfo_mod_pro.jsp">
		
		 �й� : <input type="text" name="ids" value="<%=id %>" maxlength="20" disabled><br/>
		�̹��� : <input type="text" name="image" maxlength="20"><br/>
		��ȭ ��ȣ : <input type="text" name="phone" maxlength="20"><br/>
		�ּ� : <input type="text" name="addr" maxlength="10"><br/>
		<input type="submit" value="�Է¿Ϸ�">
		
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		<input type="submit" id="button1" value="���ư���" formaction = "Std_Studentinfo.jsp" >
	</form>

</body>
</html>