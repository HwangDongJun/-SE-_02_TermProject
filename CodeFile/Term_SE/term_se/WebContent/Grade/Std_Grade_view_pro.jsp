<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>


</head>
<%
	request.setCharacterEncoding("euc-kr");

	Grade grd = new Grade();
	grade_Node gn = new grade_Node();

	
	

	String id = request.getParameter("id");
	String date = request.getParameter("date");
	
	ArrayList<grade_Node> ar = grd.Std_grade_search(id, date);
	
%>
<body>
	<h2> �л� ���� ��ȸ </h2>
	
		
	<% for(int i = 0; i < ar.size(); i++){ %>
		<h5> �й� : <%=ar.get(i).Std_id  %> �м���ȣ :  <%=ar.get(i).Std_subnum  %> </h5>
		<h6> �⵵/�б� : <%=ar.get(i).Std_date  %> ������ �� : <%=ar.get(i).Std_subject  %> ���� : <%=ar.get(i).Std_point  %></h6>
		<h6> ���/���� : <%=ar.get(i).Std_score %> ������ : <%=ar.get(i).Std_grade  %> �̼� ���� : <%=ar.get(i).Std_Cur %> </h6>
		
		<h3>-------------------------------------------------------------</h3>
	<%}%>
	
	<form>
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		<input type="submit" id="button1" formaction="Std_Grade_view.jsp" value="���ư���" >
	</form>
</body>

</html>