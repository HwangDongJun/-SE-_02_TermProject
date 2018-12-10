<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
</head>


<% request.setCharacterEncoding("euc-kr"); %>

<% // 파라미터 값을 얻어내는 부분



String result = "";
	
	String id = request.getParameter("id");
	
%>
<body>
	<h2> 학적 관리 </h2>
	<form>
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		<input type="submit" id="button1" formaction="Std_Studentinfo_view.jsp" value="학적조회" ></br>
		<input type="submit" id="button2" formaction="Std_Studentinfo_mod.jsp" value="학적변경" ></br>
		<input type="submit" id="button3" formaction="../User.jsp" value="돌아가기" >
	</form>
</body>

<script>
</script>
</html>