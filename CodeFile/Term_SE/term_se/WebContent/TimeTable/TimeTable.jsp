<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
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



Enrollment el = new Enrollment();
enroll_AL gn = new enroll_AL();



HashMap<String, enroll_AL> ellstd = el.Std_Enrol_search(id);


HashMap<String, ArrayList> map = new HashMap<String, ArrayList>();

map.put("Monday", new ArrayList());
map.put("Tuesday", new ArrayList());
map.put("Wednesday", new ArrayList());
map.put("Thursday", new ArrayList());
map.put("Friday", new ArrayList());

for(String keys : ellstd.keySet()){

	String[] temp =  ((String)ellstd.get(keys).enrolment_list.get(3)).split(" ");
	String day = temp[0];
	switch (day){
		case "Monday" : 
			ArrayList temp1 = map.get(day);
			temp1.add((String)ellstd.get(keys).enrolment_list.get(3) + "(h)    " + ellstd.get(keys).enrolment_list.get(2) + "    " +ellstd.get(keys).enrolment_list.get(4));
			map.put(day, temp1);
		break;
		case "Tuesday" : 
			ArrayList temp2 = map.get(day);
			temp2.add((String)ellstd.get(keys).enrolment_list.get(3)+ "(h)    " +ellstd.get(keys).enrolment_list.get(2)+ "    " + ellstd.get(keys).enrolment_list.get(4));
			map.put(day, temp2);
			break;
		case "Wednesday" : 
			ArrayList temp3 = map.get(day);
			temp3.add((String)ellstd.get(keys).enrolment_list.get(3) + "(h)    " + ellstd.get(keys).enrolment_list.get(2) + "    " + ellstd.get(keys).enrolment_list.get(4));
			map.put(day, temp3);
			break;
		case "Thursday" : 
			ArrayList temp4 = map.get(day);
			temp4.add((String)ellstd.get(keys).enrolment_list.get(3)+ "(h)    " + ellstd.get(keys).enrolment_list.get(2)+ "    " + ellstd.get(keys).enrolment_list.get(4));
			map.put(day, temp4);
			break;
		case "Friday" : 
			ArrayList temp5 = map.get(day);
			temp5.add((String)ellstd.get(keys).enrolment_list.get(3) + "(h)    " + ellstd.get(keys).enrolment_list.get(2) + "    " + ellstd.get(keys).enrolment_list.get(4));
			map.put(day, temp5);
			break;
		default :
			break;
	}

	
}

	%>
	
	
	<% 
	
	String line = "요일 / 강의시간(시작 종료(h)) / 과목이름 / 강의실 </br>";
	for(int i = 0; i< map.get("Monday").size();i++){
		line += map.get("Monday").get(i) + "</br>";
	}
	
	line+="</br>";
	for(int i = 0; i< map.get("Tuesday").size();i++){
		line += map.get("Tuesday").get(i)+"</br>";
	}
	line+="</br>";
	for(int i = 0; i< map.get("Wednesday").size();i++){
		line += map.get("Wednesday").get(i)+"</br>";
	}
	line+="</br>";
	for(int i = 0; i< map.get("Thursday").size();i++){
		line += map.get("Thursday").get(i)+"</br>";
	}
	line+="</br>";
	for(int i = 0; i< map.get("Friday").size();i++){
		line += map.get("Friday").get(i)+"</br>";
	}
	line+="</br>";
	%>
	
	<%= line %>
	<form action ="../User.jsp">
		<input type="text" id="id" name="id" value ="<%=id%>" style="display:none">
		<input type="submit" id="button1" value="돌아가기" >
	</form>

</body>

</html>