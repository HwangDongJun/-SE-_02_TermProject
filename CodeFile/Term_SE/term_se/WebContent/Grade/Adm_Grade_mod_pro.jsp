<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import= "term_se.*"%>

<% request.setCharacterEncoding("euc-kr"); %>

<% // 파라미터 값을 얻어내는 부분



Grade gd = new Grade();


grade_Node gn = new grade_Node();


String result = "";
	
	String id = request.getParameter("id");
	String num = request.getParameter("num");
	String subject = request.getParameter("subject");
	String date = request.getParameter("date");
	String point = request.getParameter("point");
	String score = request.getParameter("score");
	String grade = request.getParameter("grade");
	String cur = request.getParameter("cur");
	

	if(gd.Std_grade_mod(id, point, score, grade, num, date, cur, subject)){
		
		result = "정상적으로 수정되었습니다.";
	} else {
		result = "수정에 실패했습니다.";
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
	 location.href = "Adm_Grade_reg.jsp"; 
}
</script>
</body>
</html>	
		