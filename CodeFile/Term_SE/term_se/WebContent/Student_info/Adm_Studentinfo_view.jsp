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

	Student_information si = new Student_information();

	ArrayList si_list = si.Std_infolist_load();
	Student sch = new Student();
	
	
	

%>
<body>
	<h2> ���� ��ȸ </h2>
	
		
	<% for(int i = 0; i < si_list.size(); i++){ %>
		<h2> �й� : <%=((Student)si_list.get(i)).std_id %> �̸� :  <%=((Student)si_list.get(i)).std_name %> �а� : <%=((Student)si_list.get(i)).std_major %></h2>
		<h3> �ּ� : <%=((Student)si_list.get(i)).std_address %> ��ȭ��ȣ :  <%=((Student)si_list.get(i)).std_phone_number %> </h3>
		<h3> �ֹι�ȣ : <%=((Student)si_list.get(i)).std_private_num %> </br>
		���� :  </h3>
		<img src = "./img/<%=((Student)si_list.get(i)).std_image%>.png" height="200" width="160" alt="your face"></img>
		<h3>-------------------------------------------------------------</h3>
	<%}%>
	
	<input type="button" id="button1" onclick="button1_click();" value="���ư���" ></br>


</body>

<script>
function button1_click() {
	 location.href = "Adm_Studentinfo.jsp"; 
}
</script>
</html>