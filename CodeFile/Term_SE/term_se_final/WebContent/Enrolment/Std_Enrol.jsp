<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>
<style>

span {

width : 43%;
display :inline-block;


}

</style>
</head>
<body>

<%
request.setCharacterEncoding("euc-kr");

String str = "";
String id = request.getParameter("id");
String num = request.getParameter("num");
String xnum = request.getParameter("xnum");

Enrollment el = new Enrollment();
enroll_AL gn = new enroll_AL();

// ��û ��ư Ŭ�� ��
if(!(num == null || num.equals(" "))){
	// ��û ���� ��
	if(el.Enrol(num, id)){
		str= "��û�� ���� �߽��ϴ�.";
	} else {
		str="��û�� �����߽��ϴ�.";
	}
}
// ���� ��ư Ŭ�� ��
else if(!(xnum == null || xnum.equals(" "))){
	// ��û ���� ��
	if(el.Enrol_cancel(xnum,id)){
		str= "������ ���� �߽��ϴ�.";
	} else {
		str="������ �����߽��ϴ�.";
	}
}

HashMap<String, enroll_AL> ell = el.enrolment_list_load();


HashMap<String, enroll_AL> ellstd = el.Std_Enrol_search(id);




%>
	<%= str %>
	<h2> ���� ���� </h2>
	
	<span>
	
	<% for(String keys : ell.keySet()){ %>
		<form action = "Std_Enrol.jsp"> <input type="submit" value= "��û"> <input type="text" name ="num" value= "<%=keys %>" style="display:none">
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none"></form>
		<h5> �м���ȣ : <%=keys %>  ���� ��û �ο� : <%= ell.get(keys).enrolment_list.get(0)  %>
		 ���� : <%= ell.get(keys).enrolment_list.get(1)  %>  ������ �� : <%= ell.get(keys).enrolment_list.get(2) %>
		  ���ǽð� : <%= ell.get(keys).enrolment_list.get(3)  %> ���ǽ� :  <%= ell.get(keys).enrolment_list.get(4) %> 
		  ��米��  : <%= ell.get(keys).enrolment_list.get(5)  %> </h6>
		<h3>-------------------------------------------------------------</h3>
	<%}%>
	</span>
	<span style ="border-left: 5px solid black; padding-left : 5px;">
	<h3> ���� ��û�� ���� ���</h3>
	<% for(String keys : ellstd.keySet()){ %>
		<form action = "Std_Enrol.jsp"> <input type="submit" value= "����"> <input type="text" name ="xnum" value="<%=keys %>"style="display:none">
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none"></form>
		<h5> �м���ȣ : <%=keys %> ������ �� : <%= ellstd.get(keys).enrolment_list.get(2) %>
		</h6>
		<h3>-------------------------------------------------------------</h3>
	<%}%>
	
	
	
	</span >
	
	<form action ="../User.jsp">
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		<input type="submit" id="button1" value="���ư���" >
	</form>
	<%=id %>
	


</body>

</html>