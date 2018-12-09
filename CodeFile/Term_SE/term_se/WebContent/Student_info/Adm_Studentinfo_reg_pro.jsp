<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import= "term_se.*"%>

<% request.setCharacterEncoding("euc-kr"); %>

<% // 파라미터 값을 얻어내는 부분

Student_information si = new Student_information();


String result = "";
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String major = request.getParameter("major");
	String image = request.getParameter("image");
	String phone = request.getParameter("phone");
	String priv = request.getParameter("priv");
	String addr = request.getParameter("addr");
	String ent = request.getParameter("ent");
	

	if(si.std_info_reg(name, priv, major, image, addr, phone, ent)){
		
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
	 location.href = "Adm_Studentinfo_reg1.jsp"; 
}
</script>
</body>
</html>	
		