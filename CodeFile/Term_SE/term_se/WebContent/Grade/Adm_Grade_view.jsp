<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>


</head>
<%

	Grade grd = new Grade();
	grade_Node gn = new grade_Node();


	ArrayList<grade_Node> gn_list = grd.grade_list_load();
	
%>
<body>
	<h2> 성적 조회 </h2>
	
		
	<% for(int i = 0; i < gn_list.size(); i++){ %>
		<h5> 학번 : <%=gn_list.get(i).Std_id  %> 학수번호 :  <%=gn_list.get(i).Std_subnum  %> </h5>
		<h6> 년도/학기 : <%=gn_list.get(i).Std_date  %> 교과목 명 : <%=gn_list.get(i).Std_subject  %> 학점 : <%=gn_list.get(i).Std_point  %></h6>
		<h6> 등급/평점 : <%=gn_list.get(i).Std_score %> 성적평가 : <%=gn_list.get(i).Std_grade  %> 이수 구분 : <%=gn_list.get(i).Std_Cur %> </h6>
		
		<h3>-------------------------------------------------------------</h3>
	<%}%>
	
	<input type="button" id="button1" onclick="button1_click();" value="돌아가기" ></br>


</body>

<script>
function button1_click() {
	 location.href = "Adm_Grade.jsp"; 
}
</script>
</html>