<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import= "term_se.*"%>

<% request.setCharacterEncoding("euc-kr"); %>

<% // 파라미터 값을 얻어내는 부분

Student_information si = new Student_information();


String result = "";
	
	String id = request.getParameter("id");
	String image = request.getParameter("image");
	String phone = request.getParameter("phone");
	String addr = request.getParameter("addr");

	
	if(si.Std_info_modi(id, addr, image, phone)){
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
			
	<form method="post">
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		<input type="submit" id="button1" value="돌아가기" formaction = "Std_Studentinfo_mod.jsp" >
	</form>


</body>
</body>
</html>	
		