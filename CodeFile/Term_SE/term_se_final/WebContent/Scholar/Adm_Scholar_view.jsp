<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>

<%-- 확인 필요 --%>


</head>
<%

	Scholarship ss = new Scholarship();

	ArrayList ss_list = ss.Adm_Sch_load();
	SchNode sch = new SchNode();
	
	
	

%>
<body>
	<h2> 장학생 조회 </h2>
	
		
	<% for(int i = 0; i < ss_list.size(); i++){ %>
		<h3> 학번 : <%=((SchNode)ss_list.get(i)).std_id %> 이름 :  <%=((SchNode)ss_list.get(i)).std_name %> 유형 : <%=((SchNode)ss_list.get(i)).std_type %> 금액 :  <%=((SchNode)ss_list.get(i)).std_money %> </h3>
	<%}%>
	
	<input type="button" id="button1" onclick="button1_click();" value="돌아가기" ></br>


</body>

<script>
function button1_click() {
	 location.href = "Adm_Scholar.jsp"; 
}
</script>
</html>