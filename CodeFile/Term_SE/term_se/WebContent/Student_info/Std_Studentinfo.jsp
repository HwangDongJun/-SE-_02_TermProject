<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>
</head>


<% request.setCharacterEncoding("euc-kr"); %>

<% // �Ķ���� ���� ���� �κ�



String result = "";
	
	String id = request.getParameter("id");
	
%>
<body>
	<h2> ���� ���� </h2>
	<form>
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		<input type="submit" id="button1" formaction="Std_Studentinfo_view.jsp" value="������ȸ" ></br>
		<input type="submit" id="button2" formaction="Std_Studentinfo_mod.jsp" value="��������" ></br>
		<input type="submit" id="button3" formaction="../User.jsp" value="���ư���" >
	</form>
</body>

<script>
</script>
</html>