<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>


</head>
<%

	
	Enrollment el = new Enrollment();
	enroll_AL gn = new enroll_AL();

	HashMap<String, enroll_AL> ell = el.enrolment_list_load();


	
%>
<body>
	<h2> 수강 과목 조회 </h2>
	
		
	<% for(String keys : ell.keySet()){ %>
		<h5> 학수번호 : <%=keys %>  현재 신청 인원 : <%= ell.get(keys).enrolment_list.get(0)  %> 정원 : <%= ell.get(keys).enrolment_list.get(1)  %> </h5>
		<h6> 교과목 명 : <%= ell.get(keys).enrolment_list.get(2) %> 강의시간 : <%= ell.get(keys).enrolment_list.get(3)  %></h6>
		<h6> 강의실 :  <%= ell.get(keys).enrolment_list.get(4) %> 담당교수  : <%= ell.get(keys).enrolment_list.get(5)  %> </h6>
		<h6> 신청자 학번 : <%for(int i = 0;  i < ell.get(keys).enrol_std.size() ; i++){%> <%=ell.get(keys).enrol_std.get(i)+" "%>  <%}%></h6>
		<h3>-------------------------------------------------------------</h3>
	<%}%>
	
	<input type="button" id="button1" onclick="button1_click();" value="돌아가기" ></br>


</body>

<script>
function button1_click() {
	 location.href = "Adm_Enrol.jsp"; 
}
</script>
</html>