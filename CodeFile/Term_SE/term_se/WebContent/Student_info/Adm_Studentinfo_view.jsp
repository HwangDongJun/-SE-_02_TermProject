<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>

<%-- 확인 필요 --%>


</head>
<%

	Student_information si = new Student_information();

	ArrayList si_list = si.Std_infolist_load();
	Student sch = new Student();
	
	
	

%>
<body>
	<h2> 학적 조회 </h2>
	
		
	<% for(int i = 0; i < si_list.size(); i++){ %>
		<h2> 학번 : <%=((Student)si_list.get(i)).std_id %> 이름 :  <%=((Student)si_list.get(i)).std_name %> 학과 : <%=((Student)si_list.get(i)).std_major %></h2>
		<h3> 주소 : <%=((Student)si_list.get(i)).std_address %> 전화번호 :  <%=((Student)si_list.get(i)).std_phone_number %> </h3>
		<h3> 주민번호 : <%=((Student)si_list.get(i)).std_private_num %> </br>
		사진 :  </h3>
		<img src = "./img/<%=((Student)si_list.get(i)).std_image%>.png" height="200" width="160" alt="your face"></img>
		<h3>-------------------------------------------------------------</h3>
	<%}%>
	
	<input type="button" id="button1" onclick="button1_click();" value="돌아가기" ></br>


</body>

<script>
function button1_click() {
	 location.href = "Adm_Studentinfo.jsp"; 
}
</script>
</html>