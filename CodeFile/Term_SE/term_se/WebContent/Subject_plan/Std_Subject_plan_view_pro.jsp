<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>

<% request.setCharacterEncoding("euc-kr"); %>

<% // 파라미터 값을 얻어내는 부분


Subject_plan sp = new Subject_plan();


String result = "";
	
	String id = request.getParameter("id");
	String num = request.getParameter("num");


	ArrayList res = sp.subject_plan_search(num);


	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>레코드 추가</title>
</head>
<body>


<%-- 정상적인 값 return 시 --%>
<% 	if(res.size() != 0){%>
	
		<h5> 학수번호 : <%=num  %></h5>
		<h5> 교과목명 : <%=res.get(0)%></h5>
		<h6> 개설학과 : <%=res.get(1)%></h6>
		<h6> 설강학기: <%=res.get(2)%></h6>
		<h6> 학점 시수 및 평가: <%=res.get(3)%></h6>
		<h6> 담당 교수 : <%=res.get(4)%></h6>
		<h6> 교수소속 : <%=res.get(5)%></h6>
		<h6> 학과전화 : <%=res.get(6)%></h6>
		<h6> 담당교수 전화: <%=res.get(7)%></h6>
		<h6> 담당교수 이메일: <%=res.get(8)%></h6>
		<h6> 기대역량 : <%=res.get(9)%></h6>
		<h6> 수업 개요 : <%=res.get(10)%></h6>
		<h6> 선수 학습 내용: <%=res.get(11)%></h6>
		<h6> 수업방법(%): <%=res.get(12)%></h6>
		<h6> 평가방법(%): <%=res.get(13)%></h6>
		<h6> 교과목표: <%=res.get(14)%></h6>
		<h6> 수업운영: <%=res.get(15)%></h6>
		<h6> 학습 및 평가활동: <%=res.get(16)%></h6>
		<h6> 수업규정 : <%=res.get(17)%></h6>
		<h6> 교재 및 참고 문헌: <%=res.get(18)%></h6>
		<h6> 주차별 강의 계획: <%=res.get(19)%></h6>
		<h6> 참고사항 : <%=res.get(20)%></h6>
		<h6> 장애 학습 편의제공 안내: <%=res.get(21)%></h6>
		
		
		<% 
} else {
	result = "조회에 실패했습니다.";
}
%>
		<%= result %>
			
			
			
			
			
	<form>
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		<input type="submit" id="button1" formaction="Std_Subject_plan_view.jsp" value="돌아가기" >
	</form>
</body>

</html>