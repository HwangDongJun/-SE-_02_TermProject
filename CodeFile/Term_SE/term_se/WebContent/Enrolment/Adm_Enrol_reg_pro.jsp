<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import= "term_se.*"%>

<% request.setCharacterEncoding("euc-kr"); %>

<% // 파라미터 값을 얻어내는 부분




Enrollment el = new Enrollment();
enroll_AL gn = new enroll_AL();


String result = "";
	
	String num = request.getParameter("num");
	int size = Integer.parseInt(request.getParameter("size"));
	String name = request.getParameter("name");
	String day = request.getParameter("day");
	String starttime = (String) request.getParameter("starttime");
	String time = (String) request.getParameter("time");
	String room = request.getParameter("room");
	String prof = request.getParameter("prof");
	
	String date = day + " " + starttime + " " + time;

	
	if(el.Enrol_reg(num, name, prof, date, size, 0, room)){
		
		result = "정상적으로 등록되었습니다.";
	} else {
		result = "등록에 실패했습니다.";
	}
	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>레코드 추가</title>
</head>
<body>
		<%= result %>
			
	<input type="button" id="button1" onclick="button1_click();" value="돌아가기" ></br>


</body>

<script>
function button1_click() {
	 location.href = "Adm_Enrol_reg.jsp"; 
}
</script>
</body>
</html>	
		