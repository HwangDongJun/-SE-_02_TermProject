<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>

<%-- Ȯ�� �ʿ� --%>


</head>
<%

	Subject sbj = new Subject();
	subject_Node sn = new subject_Node();


	ArrayList<subject_Node> sn_list = sbj.subject_list_load();
	
%>
<body>
	<h2> ������ ��ȸ </h2>
	
		
	<% for(int i = 0; i < sn_list.size(); i++){ %>
		<h5> ������ �� : <%=sn_list.get(i).Sub_name %> �м���ȣ :  <%=sn_list.get(i).Sub_num %> </h5>
		<h6> �����а� : <%=sn_list.get(i).Major %> �����б� : <%=sn_list.get(i).Date %></h6>
		<h6> ��米�� : <%=sn_list.get(i).Prof_name%> �������� : <%=sn_list.get(i).Std_size %> ���� : <%=sn_list.get(i).Point%> </h6>
		<h3>-------------------------------------------------------------</h3>
	<%}%>
	
	<input type="button" id="button1" onclick="button1_click();" value="���ư���" ></br>


</body>

<script>
function button1_click() {
	 location.href = "Adm_Subject.jsp"; 
}
</script>
</html>