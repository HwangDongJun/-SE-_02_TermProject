<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import= "term_se.*"%>

<% request.setCharacterEncoding("euc-kr"); %>

<% // �Ķ���� ���� ���� �κ�

	Scholarship ss = new Scholarship();

String result = "";
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String type = request.getParameter("type");
	String money = request.getParameter("money");
	
	if( money == ""){
%>
		<script> alert(" ������ �ùٸ��� �ʽ��ϴ� !");
		location.href = "Adm_Scholar_reg.jsp"; </script>
		
<%
		
	} else {
		
		if(ss.Sch_reg(id, name, type, money)){
			result = "���������� ��ϵǾ����ϴ�.";
		} else {
			result = "��Ͽ� �����߽��ϴ�.";
		}
		
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
	 location.href = "Adm_Scholar_reg.jsp"; 
}
</script>
</body>
</html>	
		