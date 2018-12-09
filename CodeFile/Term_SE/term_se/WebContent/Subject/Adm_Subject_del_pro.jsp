<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import= "term_se.*"%>

<% request.setCharacterEncoding("euc-kr"); %>

<% // 파라미터 값을 얻어내는 부분
Subject sbj = new Subject();


subject_Node sn = new subject_Node();


String result = "";
String id = request.getParameter("id");
	
		
		if(sbj.subject_list_del(id)){
			result = "값이 정상적으로 삭제되었습니다.";
		} else {
			result = "등록되지 않은 학수번호입니다.";
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
	 location.href = "Adm_Subject_del.jsp"; 
}
</script>
</body>
</html>	
		