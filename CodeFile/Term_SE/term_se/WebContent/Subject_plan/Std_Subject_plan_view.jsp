<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>


</head>
<%
	request.setCharacterEncoding("euc-kr");

	Grade grd = new Grade();
	grade_Node gn = new grade_Node();
	

	String id = request.getParameter("id");
	
%>
<body>
	<h2> ���� ��ȹ�� ��ȸ </h2>
	<form action ="Std_Subject_plan_view_pro.jsp">
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		�м���ȣ : <input type="text" id="num" name="num">
		
		<input type="submit" id="button1" value="�Է�" ></br>
		<input type="submit" id="button1" formaction="../User.jsp" value="���ư���" >
	</form>
</body>

</html>