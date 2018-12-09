<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>

</head>

<body>
	<h2> 강의 계획서 등록 </h2>
		<form method="post" action="Adm_Subject_plan_reg_pro.jsp">

	학수번호 : <input type="text" name="sub_num"><br/>
	교과목 명 : <input type="text" name="sub_name"><br/>
	개설학과 : <input type="text" name="major"><br/>
	설강학기 : <input type="text" name="date"><br/>
	학점시수 및 평가 : <input type="text" name="p_h_e"><br/>
	담당교수 " <input type="text" name="prof_name"><br/>
	교수소속 : <input type="text" name="prof_major"><br/>
	학과전화 : <input type="text" name="major_tel"><br/>
	담당교수전화 : <input type="text" name="prof_tel"><br/>
	담당교수E-MAIL : <input type="text" name="prof_email"><br/>
	기대역량 : <input type="text" name="anticipate"><br/>
	수업개요 : <input type="text" name="class_info"><br/>
	선수학습내용 : <input type="text" name="pre_study"><br/>
	수업방법(%) : <input type="text" name="method"><br/>
	평가방법(%) : <input type="text" name="evaluation"><br/>
	교과목표 : <input type="text" name="object"><br/>
	수업운영 : <input type="text" name="operate"><br/>
	학습 및 평가활동 : <input type="text" name="std_eva"><br/>
	수업 규정 : <input type="text" name="rule"><br/>
	교재 및 참고문헌 : <input type="text" name="reference"><br/>
	주차별 강의 계획 : <input type="text" name="week_sche"><br/>
	참고사항 : <input type="text" name="ps"><br/>
	장애학습 학습편의 제공안내 : <input type="text" name="disabil_info"><br/>
		
		<input type="submit" value="입력완료">
</body>
<input type="button" id="button1" onclick="button1_click();" value="돌아가기" ></br>

<script>
function button1_click() {
	 location.href = "Adm_Subject_plan.jsp"; 
}
</script>
</html>