<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<form>
	name : <input type="text" name="fname" /><br />
	age : <input type="number" name="age" id="" /><br />
	gender : ���� <input type="radio" name="gender" value="male" /><br />
			 ���� <input type="radio" name="gender" value="female" /><br />
 	<!-- ����Ÿ������ ����� üũ�� �׸��� value���� parameter�� ���� �� -->
 	
 	food : pizza <input type="checkbox" name="food" value="pizza" /><br />
 		   burger <input type="checkbox" name="food" value= "burger""id="" /><br />
 		   icecream <input type="checkbox" name="food" value="icecream" id="" /><br />
 		   water <input type="checkbox" name="food" value="water" id="" />	<br />
 	<!-- check�ڽ��� �����׸� ���� ���� -->
	<input type="submit" value="����" class="btn btn-primary" />
	
</form>

<%
String name = request.getParameter("fname");
String age = request.getParameter("age");
String gender = request.getParameter("gender"); 
String[] food = request.getParameterValues("food");
/* checkboxŸ���� return���� ������ �޾ƾ� �ؼ� �迭Ÿ������ ����
 �޼ҵ嵵 Values�� ����*/
%>

name : <%= name %> <br />
age : <%= age %> <br />
gender : <%= gender %> <br />
food:
<!-- food�� �迭Ÿ���̹Ƿ� �ݺ����� ���ؼ� ��� -->
<%
if(food != null){
	for(int i = 0; i < food.length; i++){
		out.print(food[i]);
		if(i != food.length-1){
			out.print(",");
		}
	}
}
%>
<!-- ���for�� -->
<%
if(food!=null){
	for(String str : food){
		out.print(str + "   ");
	}
}
%>
</body>
</html>