<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import= "term_se.*"%>

<% request.setCharacterEncoding("euc-kr"); %>

<% // �Ķ���� ���� ���� �κ�

Student_information si = new Student_information();


String result = "";
	
	String id = request.getParameter("id");
	String image = request.getParameter("image");
	String phone = request.getParameter("phone");
	String addr = request.getParameter("addr");

	
	if(si.Std_info_modi(id, addr, image, phone)){
		result = "���������� �����Ǿ����ϴ�.";
	} else {
		result = "������ �����߽��ϴ�.";
	}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���ڵ� �߰�</title>
</head>
<body>
		<%= result %>
			
	<form method="post">
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		<input type="submit" id="button1" value="���ư���" formaction = "Std_Studentinfo_mod.jsp" >
	</form>


</body>
</body>
</html>	
		