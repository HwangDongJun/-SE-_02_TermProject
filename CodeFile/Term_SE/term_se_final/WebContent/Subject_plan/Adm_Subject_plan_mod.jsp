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
	<h2> 강의계획서 수정 </h2>
		<form method="post" action="Adm_Subject_plan_mod_pro.jsp">

	학수번호(xx-xxxx) : <input type="text" name="sub_num" required pattern = "[0-9]{2}-[0-9]{4}"><br/>
	교과목 명 : <input type="text" name="sub_name"required><br/>
	개설학과 : <input type="text" name="major"required><br/>
	설강학기(20xx/x) : <input type="text" name="date"required pattern = "20[0-9]{2}/[0-9]"><br/>
	학점시수 및 평가 : <input type="text" name="p_h_e"required><br/>
	담당교수 " <input type="text" name="prof_name"required><br/>
	교수소속 : <input type="text" name="prof_major"required><br/>
	학과전화(xxx-xxx-xxxx) : <input type="text" name="major_tel"required pattern = "[0-9]{3}-[0-9]{3}-[0-9]{4}"><br/>
	담당교수전화(xxx-xxxx-xxxx) : <input type="text" name="prof_tel"required pattern = "[0-9]{3}-[0-9]{4}-[0-9]{4}"><br/>
	담당교수E-MAIL : <input type="email" name="prof_email"required ><br/>
	기대역량 : <input type="text" name="anticipate"required><br/>
	수업개요 : <input type="text" name="class_info"required><br/>
	선수학습내용 : <input type="text" name="pre_study"required><br/>
	수업방법(%) : <input type="text" name="method"required><br/>
	평가방법(%) : <input type="text" name="evaluation"required><br/>
	교과목표 : <input type="text" name="object"required><br/>
	수업운영 : <input type="text" name="operate"required><br/>
	학습 및 평가활동 : <input type="text" name="std_eva"required><br/>
	수업 규정 : <input type="text" name="rule"required><br/>
	교재 및 참고문헌 : <input type="text" name="reference"required><br/>
	주차별 강의 계획 : <input type="text" name="week_sche"required><br/>
	참고사항 : <input type="text" name="ps"required><br/>
	장애학습 학습편의 제공안내 : <input type="text" name="disabil_info"required><br/>
		
		<input type="submit" value="입력완료">
</body>
<input type="button" id="button1" onclick="button1_click();" value="돌아가기" ></br>

<script>
function button1_click() {
	 location.href = "Adm_Subject_plan.jsp"; 
}
</script>
</html>