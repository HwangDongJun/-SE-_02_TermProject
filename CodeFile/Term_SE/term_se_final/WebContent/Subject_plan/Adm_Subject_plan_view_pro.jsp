<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import= "term_se.*"%>

<% request.setCharacterEncoding("euc-kr"); %>

<% // �Ķ���� ���� ���� �κ�


Subject_plan sp = new Subject_plan();


String result = "";
	

	String num = request.getParameter("num");


	ArrayList res = sp.subject_plan_search(num);


	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���ڵ� �߰�</title>
</head>
<body>


<%-- �������� �� return �� --%>
<% 	if(res.size() != 0){%>
	
		<h5> �м���ȣ : <%=num  %></h5>
		<h5> ������� : <%=res.get(0)%></h5>
		<h6> �����а� : <%=res.get(1)%></h6>
		<h6> �����б�: <%=res.get(2)%></h6>
		<h6> ���� �ü� �� ��: <%=res.get(3)%></h6>
		<h6> ��� ���� : <%=res.get(4)%></h6>
		<h6> �����Ҽ� : <%=res.get(5)%></h6>
		<h6> �а���ȭ : <%=res.get(6)%></h6>
		<h6> ��米�� ��ȭ: <%=res.get(7)%></h6>
		<h6> ��米�� �̸���: <%=res.get(8)%></h6>
		<h6> ��뿪�� : <%=res.get(9)%></h6>
		<h6> ���� ���� : <%=res.get(10)%></h6>
		<h6> ���� �н� ����: <%=res.get(11)%></h6>
		<h6> �������(%): <%=res.get(12)%></h6>
		<h6> �򰡹��(%): <%=res.get(13)%></h6>
		<h6> ������ǥ: <%=res.get(14)%></h6>
		<h6> �����: <%=res.get(15)%></h6>
		<h6> �н� �� ��Ȱ��: <%=res.get(16)%></h6>
		<h6> �������� : <%=res.get(17)%></h6>
		<h6> ���� �� ���� ����: <%=res.get(18)%></h6>
		<h6> ������ ���� ��ȹ: <%=res.get(19)%></h6>
		<h6> ������� : <%=res.get(20)%></h6>
		<h6> ��� �н� �������� �ȳ�: <%=res.get(21)%></h6>
		
		
		<% 
} else {
	result = "��ȸ�� �����߽��ϴ�.";
}
%>
		<%= result %>
			
			
			
			
			
	<input type="button" id="button1" onclick="button1_click();" value="���ư���" >


</body>

<script>
function button1_click() {
	 location.href = "Adm_Subject_plan_view.jsp"; 
}
</script>
</body>
</html>	
		