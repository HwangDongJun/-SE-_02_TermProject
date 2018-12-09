<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
<style>

span {

width : 43%;
display :inline-block;


}

</style>
</head>
<body>

<%
request.setCharacterEncoding("euc-kr");

String str = "";
String id = request.getParameter("id");
String num = request.getParameter("num");
String xnum = request.getParameter("xnum");

Enrollment el = new Enrollment();
enroll_AL gn = new enroll_AL();

// 신청 버튼 클릭 시
if(!(num == null || num.equals(" "))){
	// 신청 선공 시
	if(el.Enrol(num, id)){
		str= "신청에 성공 했습니다.";
	} else {
		str="신청에 실패했습니다.";
	}
}
// 삭제 버튼 클릭 시
else if(!(xnum == null || xnum.equals(" "))){
	// 신청 선공 시
	if(el.Enrol_cancel(xnum,id)){
		str= "삭제에 성공 했습니다.";
	} else {
		str="삭제에 실패했습니다.";
	}
}

HashMap<String, enroll_AL> ell = el.enrolment_list_load();


HashMap<String, enroll_AL> ellstd = el.Std_Enrol_search(id);




%>
	<%= str %>
	<h2> 수강 관리 </h2>
	
	<span>
	
	<% for(String keys : ell.keySet()){ %>
		<form action = "Std_Enrol.jsp"> <input type="submit" value= "신청"> <input type="text" name ="num" value= "<%=keys %>" style="display:none">
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none"></form>
		<h5> 학수번호 : <%=keys %>  현재 신청 인원 : <%= ell.get(keys).enrolment_list.get(0)  %>
		 정원 : <%= ell.get(keys).enrolment_list.get(1)  %>  교과목 명 : <%= ell.get(keys).enrolment_list.get(2) %>
		  강의시간 : <%= ell.get(keys).enrolment_list.get(3)  %> 강의실 :  <%= ell.get(keys).enrolment_list.get(4) %> 
		  담당교수  : <%= ell.get(keys).enrolment_list.get(5)  %> </h6>
		<h3>-------------------------------------------------------------</h3>
	<%}%>
	</span>
	<span style ="border-left: 5px solid black; padding-left : 5px;">
	<h3> 현재 신청된 강의 목록</h3>
	<% for(String keys : ellstd.keySet()){ %>
		<form action = "Std_Enrol.jsp"> <input type="submit" value= "삭제"> <input type="text" name ="xnum" value="<%=keys %>"style="display:none">
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none"></form>
		<h5> 학수번호 : <%=keys %> 교과목 명 : <%= ellstd.get(keys).enrolment_list.get(2) %>
		</h6>
		<h3>-------------------------------------------------------------</h3>
	<%}%>
	
	
	
	</span >
	
	<form action ="../User.jsp">
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		<input type="submit" id="button1" value="돌아가기" >
	</form>
	<%=id %>
	


</body>

</html>