<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
</head>

<%
request.setCharacterEncoding("euc-kr");

String id = request.getParameter("id");

%>
<body>
	<h2> 학생 로그인 </h2>
	<form>
	<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
	<input type="submit" id="button1" formaction="./Student_info/Std_Studentinfo.jsp" value="학적 관리" >
	<input type="submit" id="button2" formaction="./Subject/Std_Subject_view.jsp" value="교과목 조회" >
	<input type="submit" id="button3" formaction="./Grade/Std_Grade_view.jsp" value="성적 조회" >
	<input type="submit" id="button4" formaction="./Enrolment/Std_Enrol.jsp" value="수강 관리" ></br>
	<input type="submit" id="button5" formaction="./Subject_plan/Std_Subject_plan_view.jsp" value="강의계획서 조회" >
	<input type="submit" id="button6" formaction="./Scholar/Std_Scholar_view.jsp" value="장학생 조회" >
	<input type="submit" id="button7" formaction="./TimeTable/TimeTable.jsp" value="시간표 조회" >
	</form>
	<%= id %>
</body>

</html>