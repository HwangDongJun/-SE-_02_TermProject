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
	
	Subject sbj = new Subject();
	subject_Node sn = new subject_Node();


	

	String id = request.getParameter("id");
	String num = request.getParameter("num");
	
	ArrayList<subject_Node> sn_list = sbj.Std_subject_search(num);
	
%>
<body>
	<h2> ������ ��ȸ </h2>
	
		
	
	<% for(int i = 0; i < sn_list.size(); i++){ %>
		<h5> ������ �� : <%=sn_list.get(i).Sub_name %> �м���ȣ :  <%=sn_list.get(i).Sub_num %> </h5>
		<h6> �����а� : <%=sn_list.get(i).Major %> �����б� : <%=sn_list.get(i).Date %></h6>
		<h6> ��米�� : <%=sn_list.get(i).Prof_name%> �������� : <%=sn_list.get(i).Std_size %> ���� : <%=sn_list.get(i).Point%> </h6>
		<h3>-------------------------------------------------------------</h3>
	<%}%>
	
	<form>
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		<input type="submit" id="button1" formaction="Std_Subject_view.jsp" value="���ư���" >
	</form>
</body>

</html>