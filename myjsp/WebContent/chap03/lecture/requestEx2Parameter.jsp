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
<!-- form������ ���� id�� pw�� server�� �����ϴ� �� ���� -->
<form>
	<input type="text" name="id"/> <br>
	<input type="text" name="pw"/> <br>
	<input type="password" name="pw2" /> <br />
	<input type="number" name = "age" value="1"/> <br />
	<input type="submit" value="����" />
	<input type="date" name = "date" />
</form>
<!-- type: �Է¶��� Ÿ��
	 name: �Է¶��� identity
	 value: �ʱⰪ -->

<%
/* httpServletRequest ��ü�� getParameter �޼ҵ忡 name�� �ش��ϴ� ���� �־� 
     �������� ���� (return type�� String, �ʿ信 ���� ��������ȯ �ʿ�)*/
String val1 = request.getParameter("id");
String val2 = request.getParameter("pw");
String val3 = request.getParameter("pw2");
String val4 = request.getParameter("age");
/* val4 �� input�� �ȿ��� �⺻���� 1�� ����������
 ó�� ������ �� �⺻���� ������ �������� �����Ƿ� ó�� ������ �д� val4���� null�̴�*/
int val4Int = 0;
if(val4 != null){
	
	val4Int = Integer.valueOf(val4);
}
String val5 = request.getParameter("date");

%>
id = <%= val1 %> <br />
pw = <%= val2 %> <br />
pw2 = <%= val3 %> <br />
age = <%= val4Int %> <br />
date = <%= val5 %> <br />
</body>
</html>







