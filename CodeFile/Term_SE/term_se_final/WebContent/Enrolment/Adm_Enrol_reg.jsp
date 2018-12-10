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
	<h2> 수강 과목  등록 </h2>
		<form method="post" action="Adm_Enrol_reg_pro.jsp">

		학수번호(xx-xxxx) : <input type="text" name="num" maxlength="20" required pattern="[0-9]{2}-[0-9]{4}"><br/>
		수강 정원 : <input type="text" name="size" maxlength="20" required pattern="[0-9]*"><br/>
		교과목 명 : <input type="text" name="name" maxlength="20" required><br/>
		강의 요일 : <select name ="day" required>
 				 <option>Monday</option>
  				 <option>Tuesday</option>
				  <option>Wednesday</option>
				  <option>Thursday</option>
				  <option>Friday</option>
				</select><br/>
		강의 시작 시간(24h) : <input type="number" name="starttime" min="0" max="24" required><br/>
		강의 종료 시간(24h) : <input type="number" name="time" min = "0" max = "24" required><br/>
		강의실 : <input type="text" name="room" maxlength="20" required><br/>
		담당교수: <input type="text" name="prof" maxlength="20" required><br/>
		
		
		<input type="submit" value="입력완료">
</body>
<input type="button" id="button1" onclick="button1_click();" value="돌아가기" ></br>

<script>
function button1_click() {
	 location.href = "Adm_Enrol.jsp"; 
}
</script>
</html>