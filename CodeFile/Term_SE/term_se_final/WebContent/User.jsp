<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>
</head>

<%
request.setCharacterEncoding("euc-kr");

String id = request.getParameter("id");

%>
<body>
	<h2> �л� �α��� </h2>
	<form>
	<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
	<input type="submit" id="button1" formaction="./Student_info/Std_Studentinfo.jsp" value="���� ����" >
	<input type="submit" id="button2" formaction="./Subject/Std_Subject_view.jsp" value="������ ��ȸ" >
	<input type="submit" id="button3" formaction="./Grade/Std_Grade_view.jsp" value="���� ��ȸ" >
	<input type="submit" id="button4" formaction="./Enrolment/Std_Enrol.jsp" value="���� ����" ></br>
	<input type="submit" id="button5" formaction="./Subject_plan/Std_Subject_plan_view.jsp" value="���ǰ�ȹ�� ��ȸ" >
	<input type="submit" id="button6" formaction="./Scholar/Std_Scholar_view.jsp" value="���л� ��ȸ" >
	<input type="submit" id="button7" formaction="./TimeTable/TimeTable.jsp" value="�ð�ǥ ��ȸ" >
	</form>
	<%= id %>
</body>

</html>