<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import= "term_se.*"%>

<% request.setCharacterEncoding("euc-kr"); %>

<% // �Ķ���� ���� ���� �κ�

Student_information si = new Student_information();


String result = "";
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String major = request.getParameter("major");
	String image = request.getParameter("image");
	String phone = request.getParameter("phone");
	String priv = request.getParameter("priv");
	String addr = request.getParameter("addr");

	
	if(si.Adm_info_modi(id, name, priv, major,  addr, image, phone)){
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
			
	<input type="button" id="button1" onclick="button1_click();" value="���ư���" ></br>


</body>

<script>
function button1_click() {
	 location.href = "Adm_Studentinfo_mod.jsp"; 
}
</script>
</body>
</html>	
		