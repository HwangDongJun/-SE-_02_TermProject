<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import= "term_se.*"%>

<% request.setCharacterEncoding("euc-kr"); %>

<% // �Ķ���� ���� ���� �κ�



Subject sbj = new Subject();


subject_Node sn = new subject_Node();


String result = "";
	
	String name = request.getParameter("name");
	String num = request.getParameter("num");
	String major = request.getParameter("major");
	String date = request.getParameter("date");
	String prof = request.getParameter("prof");
	String size = request.getParameter("size");
	int point = Integer.parseInt(request.getParameter("point"));
	
	
	if(sbj.subject_list_modi(point, name, major, date, prof, size, num)){
		
		result = "���������� �����Ǿ����ϴ�.";
	} else {
		result = "��Ͽ� �����߽��ϴ�.";
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
	 location.href = "Adm_Subject_mod.jsp"; 
}
</script>
</body>
</html>	
		