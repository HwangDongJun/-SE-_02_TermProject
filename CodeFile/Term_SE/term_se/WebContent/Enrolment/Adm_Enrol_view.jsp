<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>


</head>
<%

	
	Enrollment el = new Enrollment();
	enroll_AL gn = new enroll_AL();

	HashMap<String, enroll_AL> ell = el.enrolment_list_load();


	
%>
<body>
	<h2> ���� ���� ��ȸ </h2>
	
		
	<% for(String keys : ell.keySet()){ %>
		<h5> �м���ȣ : <%=keys %>  ���� ��û �ο� : <%= ell.get(keys).enrolment_list.get(0)  %> ���� : <%= ell.get(keys).enrolment_list.get(1)  %> </h5>
		<h6> ������ �� : <%= ell.get(keys).enrolment_list.get(2) %> ���ǽð� : <%= ell.get(keys).enrolment_list.get(3)  %></h6>
		<h6> ���ǽ� :  <%= ell.get(keys).enrolment_list.get(4) %> ��米��  : <%= ell.get(keys).enrolment_list.get(5)  %> </h6>
		<h6> ��û�� �й� : <%for(int i = 0;  i < ell.get(keys).enrol_std.size() ; i++){%> <%=ell.get(keys).enrol_std.get(i)+" "%>  <%}%></h6>
		<h3>-------------------------------------------------------------</h3>
	<%}%>
	
	<input type="button" id="button1" onclick="button1_click();" value="���ư���" ></br>


</body>

<script>
function button1_click() {
	 location.href = "Adm_Enrol.jsp"; 
}
</script>
</html>