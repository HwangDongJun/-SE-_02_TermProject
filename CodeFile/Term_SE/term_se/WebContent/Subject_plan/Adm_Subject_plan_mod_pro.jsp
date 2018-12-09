<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import= "term_se.*"%>

<% request.setCharacterEncoding("euc-kr"); %>

<% // 파라미터 값을 얻어내는 부분


Subject_plan sp = new Subject_plan();


String result = "";
	
	String sub_num = request.getParameter("sub_num");
	String sub_name = request.getParameter("sub_name");
	String major = request.getParameter("major");
	String date = request.getParameter("date");
	String p_h_e = request.getParameter("p_h_e");
	String prof_name = request.getParameter("prof_name");
	String prof_major = request.getParameter("prof_major");
	String major_tel = request.getParameter("major_tel");
	String prof_tel = request.getParameter("prof_tel");
	String prof_email = request.getParameter("prof_email");
	String anticipate = request.getParameter("anticipate");
	String class_info = request.getParameter("class_info");
	String pre_study = request.getParameter("pre_study");
	String method = request.getParameter("method");
	String evaluation = request.getParameter("evaluation");
	String object = request.getParameter("object");
	String operate = request.getParameter("operate");
	String std_eva = request.getParameter("std_eva");
	String rule = request.getParameter("rule");
	String reference = request.getParameter("reference");
	String week_sche = request.getParameter("week_sche");
	String ps = request.getParameter("ps");
	String disabil_info = request.getParameter("disabil_info");


	
	
	if(sp.subject_plan_list_mod(sub_name, major, date, sub_num,
			p_h_e, prof_major, prof_major, major_tel, prof_tel,
			prof_email, anticipate, class_info, pre_study, method,
			evaluation, object, operate, std_eva, rule, reference,
			week_sche, ps, disabil_info)){
		
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
	 location.href = "Adm_Subject_plan_mod.jsp"; 
}
</script>
</body>
</html>	
		